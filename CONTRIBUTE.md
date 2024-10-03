# Contribution Guide

Thank you for your interest in contributing to our Rofi themes repository! To maintain consistency and organization, please follow these guidelines when contributing themes.

## Theme Structure

Each theme should be organized within a specific folder structure as follows:

```
theme_name/
    style.rasi
    colors.rasi
```

- All names should be in lowercase to ensure consistency.
- Inside the theme folder, there should be two files: `style.rasi` and `colors.rasi`.
- The `style.rasi` file contains the theme.
- The `colors.rasi` file contains the colors required for the theme.

### Guidelines for Creating Themes:

#### General Structure
1. **Header Information**: 
   - Always include a header comment block at the beginning of your `.rasi` file. Include:
     - Name of the theme
     - Author
     - Credits (if any)
     - Date of creation

   ```css
   /***************************************************
    * Name:      [Your Name]
    * Author:    [Your Name]
    * Credits:   None
    * Date:      [YYYY-MM-DD]
    ***************************************************/
   ```

2. **Commenting**:
   - Use comments to describe the purpose of sections within your stylesheet. 
   - Ensure that comments are clear and concise.

#### Color Management
1. **Defining Colors**:
   - Define all colors at the beginning of your theme within a designated section (e.g., `/* Put the colors you are going to use here */`).
   - Use descriptive names for colors (e.g., `blue`, `green`) and avoid redefining them elsewhere in the file.

2. **Using Colors**:
   - Only use the colors defined in your color section when setting properties for elements.
   - Maintain consistency in naming conventions.

#### Element Styles
1. **Background and Foreground**:
   - Clearly define background and foreground colors with descriptive names (e.g., `background`, `foreground`).
   - Include variations for different states (e.g., selected, active, urgent).

2. **Element Properties**:
   - Define all relevant properties for elements, such as `text-color`, `border-color`, and `separator-color`.

#### Aliases
1. **Aliases**:
   - Use aliases to simplify color references in your styles. 
   - Clearly mark the alias section with a comment (e.g., `/* DO NOT TOUCH HERE */`).
   - Ensure aliases reference the appropriate properties defined earlier.

#### Maintenance
1. **Consistency**:
   - Ensure that naming conventions and formatting are consistent throughout the stylesheet.
   - Avoid hardcoding values that can be referenced through aliases.
   - Use 4-space indentation for greater readability.

2. **Documentation**:
   - Keep the stylesheet well-documented, especially when making updates or changes.
   - Use comments to explain any complex logic or unusual choices.

### Example Structure

```css
/***************************************************
 * Name:      Template
 * Author:    [Your Name]
 * Credits:   None
 * Date:      [YYYY-MM-DD]
 ***************************************************/

/* Comment for the theme */

/* Color Definitions */
* {
    blue:       #14e1eb;
    green:      #65f3bd;
    /* Other colors... */

    /***** [ Elements ] *****/ 
    background:           black;
    foreground:           white;
    /* Other elements... */

    /***** [ Aliases ] *****/
    bg: @background;
    fg: @foreground;
    /* Other aliases... */
}
```

Following these guidelines will help create a clean, maintainable, and well-structured stylesheet.

#### Note:

- Please ensure that your theme follows our naming conventions and folder structure to maintain consistency across all themes.
- If you're updating an existing theme, make sure to follow the same process but only modify the necessary files within the appropriate theme folder.
- By following these guidelines, you'll help us maintain a well-organized and consistent collection of Rofi themes. Thank you for your contribution!

