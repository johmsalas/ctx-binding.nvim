local casing = require("textcase.conversions.stringcase")

local UNFORMATTED_STRING = "lorem ipsum dolor sit amet"
local UPPER_STRING = "LOREM IPSUM DOLOR SIT AMET"
local LOWER_STRING = "lorem ipsum dolor sit amet"
local SNAKE_STRING = "lorem_ipsum_dolor_sit_amet"
local DASH_STRING = "lorem-ipsum-dolor-sit-amet"
local CONSTANT_STRING = "LOREM_IPSUM_DOLOR_SIT_AMET"
local DOT_STRING = "lorem.ipsum.dolor.sit.amet"
local PHRASE_STRING = "Lorem ipsum dolor sit amet"
local CAMEL_STRING = "loremIpsumDolorSitAmet"
local PASCAL_STRING = "LoremIpsumDolorSitAmet"
local TITLE_STRING = "Lorem Ipsum Dolor Sit Amet"
local PATH_STRING = "lorem/ipsum/dolor/sit/amet"

describe("to_upper_case", function()
  it("should convert from other cases to upper_case", function()
    assert.are.same(UPPER_STRING, casing.to_upper_case(UNFORMATTED_STRING))
    assert.are.same(UPPER_STRING, casing.to_upper_case(UPPER_STRING))
    assert.are.same(UPPER_STRING, casing.to_upper_case(LOWER_STRING))
    assert.are.same(SNAKE_STRING:upper(), casing.to_upper_case(SNAKE_STRING))
    assert.are.same(DASH_STRING:upper(), casing.to_upper_case(DASH_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_upper_case(CONSTANT_STRING))
    assert.are.same(DOT_STRING:upper(), casing.to_upper_case(DOT_STRING))
    assert.are.same(UPPER_STRING, casing.to_upper_case(PHRASE_STRING))
    assert.are.same(CAMEL_STRING:upper(), casing.to_upper_case(CAMEL_STRING))
    assert.are.same(PASCAL_STRING:upper(), casing.to_upper_case(PASCAL_STRING))
    assert.are.same(UPPER_STRING, casing.to_upper_case(TITLE_STRING))
    assert.are.same(PATH_STRING:upper(), casing.to_upper_case(PATH_STRING))
  end)
end)

describe("to_lower_case", function()
  it("should convert from other cases to lower_case", function()
    assert.are.same(LOWER_STRING, casing.to_lower_case(UNFORMATTED_STRING))
    assert.are.same(LOWER_STRING, casing.to_lower_case(UPPER_STRING))
    assert.are.same(LOWER_STRING, casing.to_lower_case(LOWER_STRING))
    assert.are.same(SNAKE_STRING:lower(), casing.to_lower_case(SNAKE_STRING))
    assert.are.same(DASH_STRING:lower(), casing.to_lower_case(DASH_STRING))
    assert.are.same(CONSTANT_STRING:lower(), casing.to_lower_case(CONSTANT_STRING))
    assert.are.same(DOT_STRING:lower(), casing.to_lower_case(DOT_STRING))
    assert.are.same(LOWER_STRING, casing.to_lower_case(PHRASE_STRING))
    assert.are.same(CAMEL_STRING:lower(), casing.to_lower_case(CAMEL_STRING))
    assert.are.same(PASCAL_STRING:lower(), casing.to_lower_case(PASCAL_STRING))
    assert.are.same(LOWER_STRING, casing.to_lower_case(TITLE_STRING))
    assert.are.same(PATH_STRING:lower(), casing.to_lower_case(PATH_STRING))
  end)
end)

describe("to_snake_case", function()
  it("should convert from other cases to snake_case", function()
    assert.are.same(SNAKE_STRING, casing.to_snake_case(UNFORMATTED_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(UPPER_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(LOWER_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(SNAKE_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(DASH_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(CONSTANT_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(DOT_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(PHRASE_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(CAMEL_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(PASCAL_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(TITLE_STRING))
    assert.are.same(SNAKE_STRING, casing.to_snake_case(PATH_STRING))
  end)
end)

describe("to_dash_case", function()
  it("should convert from other cases to dash_case", function()
    assert.are.same(DASH_STRING, casing.to_dash_case(UNFORMATTED_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(UPPER_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(LOWER_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(SNAKE_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(DASH_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(CONSTANT_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(DOT_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(PHRASE_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(CAMEL_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(PASCAL_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(TITLE_STRING))
    assert.are.same(DASH_STRING, casing.to_dash_case(PATH_STRING))
  end)
end)

describe("to_constant_case", function()
  it("should convert from other cases to constant_case", function()
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(UNFORMATTED_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(UPPER_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(LOWER_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(SNAKE_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(DASH_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(CONSTANT_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(DOT_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(PHRASE_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(CAMEL_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(PASCAL_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(TITLE_STRING))
    assert.are.same(CONSTANT_STRING, casing.to_constant_case(PATH_STRING))
  end)
end)

describe("to_dot_case", function()
  it("should convert from other cases to dot_case", function()
    assert.are.same(DOT_STRING, casing.to_dot_case(UNFORMATTED_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(UPPER_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(LOWER_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(SNAKE_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(DASH_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(CONSTANT_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(DOT_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(PHRASE_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(CAMEL_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(PASCAL_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(TITLE_STRING))
    assert.are.same(DOT_STRING, casing.to_dot_case(PATH_STRING))
  end)
end)

describe("to_phrase_case", function()
  it("should convert from other cases to phrase_case", function()
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(UNFORMATTED_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(UPPER_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(LOWER_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(SNAKE_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(DASH_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(CONSTANT_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(DOT_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(PHRASE_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(CAMEL_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(PASCAL_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(TITLE_STRING))
    assert.are.same(PHRASE_STRING, casing.to_phrase_case(PATH_STRING))
  end)
end)

describe("to_camel_case", function()
  it("should convert from other cases to camel_case", function()
    assert.are.same(CAMEL_STRING, casing.to_camel_case(UNFORMATTED_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(UPPER_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(LOWER_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(SNAKE_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(DASH_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(CONSTANT_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(DOT_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(PHRASE_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(CAMEL_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(PASCAL_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(TITLE_STRING))
    assert.are.same(CAMEL_STRING, casing.to_camel_case(PATH_STRING))
  end)
end)

describe("to_pascal_case", function()
  it("should convert from other cases to pascal_case", function()
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(UNFORMATTED_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(UPPER_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(LOWER_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(SNAKE_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(DASH_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(CONSTANT_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(DOT_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(PHRASE_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(CAMEL_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(PASCAL_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(TITLE_STRING))
    assert.are.same(PASCAL_STRING, casing.to_pascal_case(PATH_STRING))
  end)
end)

describe("to_title_case", function()
  it("should convert from other cases to title_case", function()
    assert.are.same(TITLE_STRING, casing.to_title_case(UNFORMATTED_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(UPPER_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(LOWER_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(SNAKE_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(DASH_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(CONSTANT_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(DOT_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(PHRASE_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(CAMEL_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(PASCAL_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(TITLE_STRING))
    assert.are.same(TITLE_STRING, casing.to_title_case(PATH_STRING))
  end)
end)

describe("to_path_case", function()
  it("should convert from other cases to path_case", function()
    assert.are.same(PATH_STRING, casing.to_path_case(UNFORMATTED_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(UPPER_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(LOWER_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(SNAKE_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(DASH_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(CONSTANT_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(DOT_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(PHRASE_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(CAMEL_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(PASCAL_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(TITLE_STRING))
    assert.are.same(PATH_STRING, casing.to_path_case(PATH_STRING))
  end)
end)

-- to_upper_case
-- to_lower_case
-- to_snake_case
-- to_dash_case
-- to_constant_case
-- to_dot_case
-- to_phrase_case
-- to_camel_case
-- to_pascal_case
-- to_title_case
-- to_path_case
