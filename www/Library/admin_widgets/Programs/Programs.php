<?php
/**
 * Класс
 *
 * @version 1.0
 */
namespace Library\admin_widgets\Programs;

use Library\views\AutoWidget\AutoWidget,
    Boolive\values\Rule;

class Programs extends AutoWidget
{
    public function getInputRule()
    {
        return Rule::arrays(array(
                'REQUEST' => Rule::arrays(array(
                        'object' => Rule::any(
                            Rule::arrays(Rule::entity()),
                            Rule::entity()
                        )->required()
                    )
                )
            )
        );
    }
}