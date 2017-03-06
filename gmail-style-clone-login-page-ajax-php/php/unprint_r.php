<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 01-Mar-17
 * Time: 7:52 PM
 */

/*$array_string = "

Array
 (
   [0] => Array
    (
       [0] => STATIONONE
       [1] => 02/22/15 04:00:00 PM
       [2] => SW
       [3] => Array
            (
                [0] => 4.51
            )

        [4] => MPH
        [5] => Array
            (
                [0] => 16.1
            )

        [6] => MPH
    )

     [1] => Array
    (
        [0] => STATIONONE
        [1] => 02/22/15 05:00:00 PM
        [2] => S
        [3] => Array
            (
                [0] => 2.7
            )

        [4] => MPH
        [5] => Array
            (
                [0] => 9.61
            )

        [6] => MPH
    )
)
";*/

// USAGE:

/*$input_filename = 'output.txt'; // set input file name

$array_string = file_get_contents($input_filename);

print_r(print_r_reverse(trim($array_string)));*/

//

function print_r_reverse(&$output)
{
    $expecting = 0; // 0=nothing in particular, 1=array open paren '(', 2=array element or close paren ')'
    $lines = explode("\n", $output);
    $result = null;
    $topArray = null;
    $arrayStack = array();
    $matches = null;
    while (!empty($lines) && $result === null)
    {
        $line = array_shift($lines);
        $trim = trim($line);
        if ($trim == 'Array')
        {
            if ($expecting == 0)
            {
                $topArray = array();
                $expecting = 1;
            }
            else
            {
                trigger_error("Unknown array.");
            }
        }
        else if ($expecting == 1 && $trim == '(')
        {
            $expecting = 2;
        }
        else if ($expecting == 2 && preg_match('/^\[(.+?)\] \=\> (.+)$/', $trim, $matches)) // array element
        {
            list ($fullMatch, $key, $element) = $matches;
            if (trim($element) == 'Array')
            {
                $topArray[$key] = array();
                $newTopArray =& $topArray[$key];
                $arrayStack[] =& $topArray;
                $topArray =& $newTopArray;
                $expecting = 1;
            }
            else
            {
                $topArray[$key] = $element;
            }
        }
        else if ($expecting == 2 && $trim == ')') // end current array
        {
            if (empty($arrayStack))
            {
                $result = $topArray;
            }
            else // pop into parent array
            {
                // safe array pop
                $keys = array_keys($arrayStack);
                $lastKey = array_pop($keys);
                $temp =& $arrayStack[$lastKey];
                unset($arrayStack[$lastKey]);
                $topArray =& $temp;
            }
        }
        // Added this to allow for multi line strings.
        else if (!empty($trim) && $expecting == 2)
        {
            // Expecting close parent or element, but got just a string
            $topArray[$key] .= "\n".$line;
        }
        else if (!empty($trim))
        {
            $result = $line;
        }
    }

    $output = implode("\n", $lines);
    return $result;
}

/**
 * @param string $output : The output of a multiple print_r calls, separated by newlines
 * @return mixed[] : parseable elements of $output
 */
function print_r_reverse_multiple($output)
{
    $result = array();
    while (($reverse = print_r_reverse($output)) !== NULL)
    {
        $result[] = $reverse;
    }
    return $result;
}
