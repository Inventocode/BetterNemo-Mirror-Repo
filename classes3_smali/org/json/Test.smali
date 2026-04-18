.class public Lorg/json/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 25

    const-string v1, "string"

    const-string v2, "string "

    const-string v3, "double "

    const-string v4, "longer"

    const-string v5, "longer "

    const-string v6, "long   "

    const-string v7, "int    "

    const-string v8, "false"

    const-string v9, "foo"

    const-string v10, "stooges"

    const-string v11, "double"

    const-string v12, "int"

    const-string v13, "long"

    const-string v14, "true"

    const-string v15, "stooge"

    move-object/from16 p0, v10

    const-string v10, "Exception: "

    move-object/from16 v16, v10

    const-string v10, ""

    move-object/from16 v17, v15

    .line 72
    new-instance v15, Lorg/json/Test$1Obj;

    move-object/from16 v18, v1

    const-string v1, "A beany object"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const-wide/high16 v2, 0x4045000000000000L  # 42.0

    move-object/from16 v21, v4

    const/4 v4, 0x1

    invoke-direct {v15, v1, v2, v3, v4}, Lorg/json/Test$1Obj;-><init>(Ljava/lang/String;DZ)V

    :try_start_3a
    const-string v1, "<![CDATA[This is a collection of test patterns and examples for org.json.]]>  Ignore the stuff past the end.  "

    .line 75
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "{     \"list of lists\" : [         [1, 2, 3],         [4, 5, 6],     ] }"

    .line 79
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<recipe name=\"bread\" prep_time=\"5 mins\" cook_time=\"3 hours\"> <title>Basic bread</title> <ingredient amount=\"8\" unit=\"dL\">Flour</ingredient> <ingredient amount=\"10\" unit=\"grams\">Yeast</ingredient> <ingredient amount=\"4\" unit=\"dL\" state=\"warm\">Water</ingredient> <ingredient amount=\"1\" unit=\"teaspoon\">Salt</ingredient> <instructions> <step>Mix all ingredients together.</step> <step>Knead thoroughly.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Knead again.</step> <step>Place in a bread baking tin.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Bake in the oven at 180(degrees)C for 30 minutes.</step> </instructions> </recipe> "

    .line 84
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 88
    invoke-static {v1}, Lorg/json/JSONML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 93
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 94
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    const-string v1, "<div id=\"demo\" class=\"JSONML\"><p>JSONML is a transformation between <b>JSON</b> and <b>XML</b> that preserves ordering of document features.</p><p>JSONML can work with JSON arrays or JSON objects.</p><p>Three<br/>little<br/>words</p></div>"

    .line 99
    invoke-static {v1}, Lorg/json/JSONML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v23, v5

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 104
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 105
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    const-string v1, "<person created=\"2006-11-11T19:23\" modified=\"2006-12-31T23:59\">\n <firstName>Robert</firstName>\n <lastName>Smith</lastName>\n <address type=\"home\">\n <street>12345 Sixth Ave</street>\n <city>Anytown</city>\n <state>CA</state>\n <postalCode>98765-4321</postalCode>\n </address>\n </person>"

    .line 110
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;)V

    .line 114
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "{ \"entity\": { \"imageURL\": \"\", \"name\": \"IXXXXXXXXXXXXX\", \"id\": 12336, \"ratingCount\": null, \"averageRating\": null } }"

    .line 117
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "single"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "MARIE HAA\'S"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "Johnny"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "MARIE HAA\\\'S"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "bar"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "baz"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "quux"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "Thanks, Josh!"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v1

    const-string v2, "obj keys"

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-static {v15}, Lorg/json/JSONObject;->getNames(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v2

    const-string v4, "a"

    invoke-virtual {v2, v4}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    const-string v4, "b"

    invoke-virtual {v2, v4}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 156
    invoke-virtual {v1}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    const-wide/16 v4, 0x1

    .line 157
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONWriter;->value(J)Lorg/json/JSONWriter;

    .line 158
    invoke-virtual {v1}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    .line 161
    invoke-virtual {v1}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    const-string v4, "empty-array"

    .line 162
    invoke-virtual {v1, v4}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    const-string v4, "answer"

    .line 163
    invoke-virtual {v1, v4}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v4

    const-wide/16 v2, 0x2a

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONWriter;->value(J)Lorg/json/JSONWriter;

    const-string v2, "null"

    .line 164
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    .line 165
    invoke-virtual {v1, v8}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    .line 166
    invoke-virtual {v1, v14}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    const-string v2, "big"

    .line 167
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    move-object v4, v6

    const-wide v5, 0x53e27ed9d50e89b3L  # 1.23456789E96

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    const-string v2, "small"

    .line 168
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-wide v5, 0x2f576be43f1e4b54L  # 1.23456789E-80

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    const-string v2, "empty-object"

    .line 169
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    .line 170
    invoke-virtual {v1, v13}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    const-wide v5, 0x7fffffffffffffffL

    .line 171
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONWriter;->value(J)Lorg/json/JSONWriter;

    .line 172
    invoke-virtual {v1}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    const-string v2, "two"

    .line 173
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    .line 176
    invoke-virtual {v1}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    const-wide v5, 0x4058a66666666666L  # 98.6

    .line 177
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    const-wide/high16 v5, -0x3fa7000000000000L  # -100.0

    .line 178
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    .line 180
    invoke-virtual {v1}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    .line 181
    invoke-virtual {v1}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    const-string v2, "one"

    .line 182
    invoke-virtual {v1, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    .line 183
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    .line 184
    invoke-virtual {v1}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    .line 185
    invoke-virtual {v1, v15}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    .line 186
    invoke-virtual {v1}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    .line 187
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v2, v1, v3

    const/4 v5, 0x2

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v2, v1, v5

    .line 192
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 193
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "aString"

    const-string v2, "aNumber"

    const-string v6, "aBoolean"

    .line 195
    filled-new-array {v1, v2, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v1, "Testing JSONString interface"

    .line 197
    invoke-virtual {v2, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{slashes: \'///\', closetag: \'</script>\', backslash:\'\\\\\', ei: {quotes: \'\"\\\'\'},eo: {a: \'\"quoted\"\', b:\"don\'t\"}, quotes: [\"\'\", \'\"\']}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{foo: [true, false,9876543210,    0.0, 1.00000001,  1.000000000001, 1.00000000000000001, .00000000000000001, 2.00, 0.1, 2e100, -32,[],{}, \"string\"],   to   : null, op : \'Good\',ten:10} postfix comment"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "String"

    const-string v6, "98.6"

    .line 210
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "JSONObject"

    .line 211
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "JSONArray"

    .line 212
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x39

    .line 213
    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v5, 0x45f8ee90ff6c373eL  # 1.2345678901234568E29

    .line 214
    invoke-virtual {v1, v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "null"

    .line 217
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bool"

    .line 218
    invoke-virtual {v1, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "zero"

    const-wide/high16 v5, -0x8000000000000000L

    .line 219
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "\\u2028"

    const-string v5, "\u2028"

    .line 220
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "\\u2029"

    const-string v5, "\u2029"

    .line 221
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/16 v5, 0x29a

    .line 223
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-wide v5, 0x409f47f5c28f5c29L  # 2001.99

    .line 224
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    const-string v5, "so \"fine\"."

    .line 225
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v5, "so <fine>."

    .line 226
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    .line 227
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 228
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 229
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "keys"

    .line 231
    invoke-static {v1}, Lorg/json/JSONObject;->getNames(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "String"

    move-object/from16 v22, v4

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  bool: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bool"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "to"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  true: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   foo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    op: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "op"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ten: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ten"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  oops: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "oops"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<xml one = 1 two=\' \"2\" \'><five></five>First \t&lt;content&gt;<five></five> This is \"content\". <three>  3  </three>JSON does not preserve the sequencing of elements and contents.<three>  III  </three>  <three>  T H R E E</three><four/>Content text is an implied structure in XML. <six content=\"6\"/>JSON does not have implied structure:<seven>7</seven>everything is explicit.<![CDATA[CDATA blocks<are><supported>!]]></xml>"

    .line 245
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 246
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 251
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<xml do=\'0\'>uno<a re=\'1\' mi=\'2\'>dos<b fa=\'3\'/>tres<c>true</c>quatro</a>cinqo<d>seis<e/></d></xml>"

    .line 256
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 257
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<mapping><empty/>   <class name = \"Customer\">      <field name = \"ID\" type = \"string\">         <bind-xml name=\"ID\" node=\"attribute\"/>      </field>      <field name = \"FirstName\" type = \"FirstName\"/>      <field name = \"MI\" type = \"MI\"/>      <field name = \"LastName\" type = \"LastName\"/>   </class>   <class name = \"FirstName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"MI\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"LastName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class></mapping>"

    .line 262
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 264
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 268
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\" ?><Book Author=\"Anonymous\"><Title>Sample Book</Title><Chapter id=\"1\">This is chapter 1. It is not very long or interesting.</Chapter><Chapter id=\"2\">This is chapter 2. Although it is longer than chapter 1, it is not any more interesting.</Chapter></Book>"

    .line 272
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 273
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<!DOCTYPE bCard \'http://www.cs.caltech.edu/~adam/schemas/bCard\'><bCard><?xml default bCard        firstname = \'\'        lastname  = \'\' company   = \'\' email = \'\' homepage  = \'\'?><bCard        firstname = \'Rohit\'        lastname  = \'Khare\'        company   = \'MCI\'        email     = \'khare@mci.net\'        homepage  = \'http://pest.w3.org/\'/><bCard        firstname = \'Adam\'        lastname  = \'Rifkin\'        company   = \'Caltech Infospheres Project\'        email     = \'adam@cs.caltech.edu\'        homepage  = \'http://www.cs.caltech.edu/~adam/\'/></bCard>"

    .line 277
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\"?><customer>    <firstName>        <text>Fred</text>    </firstName>    <ID>fbs0001</ID>    <lastName> <text>Scerbo</text>    </lastName>    <MI>        <text>B</text>    </MI></customer>"

    .line 282
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 283
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<!ENTITY tp-address PUBLIC \'-//ABC University::Special Collections Library//TEXT (titlepage: name and address)//EN\' \'tpspcoll.sgm\'><list type=\'simple\'><head>Repository Address </head><item>Special Collections Library</item><item>ABC University</item><item>Main Library, 40 Circle Drive</item><item>Ourtown, Pennsylvania</item><item>17654 USA</item></list>"

    .line 287
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 288
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<test intertag status=ok><empty/>deluxe<blip sweet=true>&amp;&quot;toot&quot;&toot;&#x41;</blip><x>eks</x><w>bonus</w><w>bonus2</w></test>"

    .line 292
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 293
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "GET / HTTP/1.0\nAccept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*\nAccept-Language: en-us\nUser-Agent: Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; T312461; Q312461)\nHost: www.nokko.com\nConnection: keep-alive\nAccept-encoding: gzip, deflate\n"

    .line 297
    invoke-static {v1}, Lorg/json/HTTP;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 298
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "HTTP/1.1 200 Oki Doki\nDate: Sun, 26 May 2002 17:38:52 GMT\nServer: Apache/1.3.23 (Unix) mod_perl/1.26\nKeep-Alive: timeout=15, max=100\nConnection: Keep-Alive\nTransfer-Encoding: chunked\nContent-Type: text/html\n"

    .line 302
    invoke-static {v1}, Lorg/json/HTTP;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 303
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{nix: null, nux: false, null: \'null\', \'Request-URI\': \'/\', Method: \'GET\', \'HTTP-Version\': \'HTTP/1.0\'}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNull: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "nix"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   has: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "nix"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\"><SOAP-ENV:Body><ns1:doGoogleSearch xmlns:ns1=\"urn:GoogleSearch\" SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><key xsi:type=\"xsd:string\">GOOGLEKEY</key> <q xsi:type=\"xsd:string\">\'+search+\'</q> <start xsi:type=\"xsd:int\">0</start> <maxResults xsi:type=\"xsd:int\">10</maxResults> <filter xsi:type=\"xsd:boolean\">true</filter> <restrict xsi:type=\"xsd:string\"></restrict> <safeSearch xsi:type=\"xsd:boolean\">false</safeSearch> <lr xsi:type=\"xsd:string\"></lr> <ie xsi:type=\"xsd:string\">latin1</ie> <oe xsi:type=\"xsd:string\">latin1</oe></ns1:doGoogleSearch></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    .line 315
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 334
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{Envelope: {Body: {\"ns1:doGoogleSearch\": {oe: \"latin1\", filter: true, q: \"\'+search+\'\", key: \"GOOGLEKEY\", maxResults: 10, \"SOAP-ENV:encodingStyle\": \"http://schemas.xmlsoap.org/soap/encoding/\", start: 0, ie: \"latin1\", safeSearch:false, \"xmlns:ns1\": \"urn:GoogleSearch\"}}}}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "  f%oo = b+l=ah  ; o;n%40e = t.wo "

    .line 343
    invoke-static {v1}, Lorg/json/CookieList;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 344
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/CookieList;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "f%oo=blah; secure ;expires = April 24, 2002"

    .line 348
    invoke-static {v1}, Lorg/json/Cookie;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 349
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/Cookie;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{script: \'It is not allowed in HTML to send a close script tag in a string<script>because it confuses browsers</script>so we insert a backslash before the /\'}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 354
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    new-instance v1, Lorg/json/JSONTokener;

    const-string v2, "{op:\'test\', to:\'session\', pre:1}{op:\'test\', to:\'session\', pre:2}"

    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 359
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pre: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pre"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x7b

    .line 361
    invoke-virtual {v1, v2}, Lorg/json/JSONTokener;->skipTo(C)C

    move-result v2

    .line 362
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(I)V

    .line 363
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 364
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "No quotes, \'Single Quotes\', \"Double Quotes\"\n1,\'2\',\"3\"\n,\'It is \"good,\"\', \"It works.\"\n\n"

    .line 367
    invoke-static {v1}, Lorg/json/CDL;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 369
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/CDL;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, " [\"<escape>\", next is an implied null , , ok,] "

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 375
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "{ fun => with non-standard forms ; forgiving => This package can be used to parse formats that are similar to but not stricting conforming to JSON; why=To make it easier to migrate existing data to JSON,one = [[1.00]]; uno=[[{1=>1}]];\'+\':+6e66 ;pluses=+++;empty = \'\' , \'double\':0.666,true: TRUE, false: FALSE, null=NULL;[true] = [[!,@;*]]; string=>  o. k. ; \r oct=0666; hex=0x666; dec=666; o=0999; noh=0x0x}"

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 381
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77c

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77c

    .line 384
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "It\'s all good"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_77c
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "dec"

    const-string v6, "oct"

    const-string v8, "hex"

    const-string v9, "missing"

    filled-new-array {v4, v6, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 389
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 394
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{string: \"98.6\", long: 2147483648, int: 2147483647, longer: 9223372036854775807, double: 9223372036854775808}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\ngetInt"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v19

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\ngetLong"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v19

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\ngetDouble"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "good sized"

    const-wide v3, 0x7fffffffffffffffL

    .line 418
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 419
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "[2147483647, 2147483648, 9223372036854775807, 9223372036854775808]"

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 422
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nKeys: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 426
    :goto_98d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b7

    .line 427
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 428
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_98d

    .line 432
    :cond_9b7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\naccumulate: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Curly"

    move-object/from16 v3, v17

    .line 434
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Larry"

    .line 435
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Moe"

    .line 436
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x5

    const-string v5, "Shemp"

    .line 438
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 439
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\nwrite:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v1, "<xml empty><a></a><a>1</a><a>22</a><a>333</a></xml>"

    .line 445
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 446
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<book><chapter>Content of the first chapter</chapter><chapter>Content of the second chapter      <chapter>Content of the first subchapter</chapter>      <chapter>Content of the second subchapter</chapter></chapter><chapter>Third Chapter</chapter></book>"

    .line 450
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 451
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 455
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 462
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "Joe DeRita"

    .line 463
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Shemp"

    .line 464
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Curly"

    move-object/from16 v5, p0

    .line 465
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Larry"

    .line 466
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Moe"

    .line 467
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stoogearray"

    .line 468
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "map"

    const/4 v5, 0x0

    .line 469
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    const-string v2, "collection"

    .line 470
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    const-string v2, "array"

    .line 471
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 473
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/util/Collection;)Lorg/json/JSONArray;

    .line 474
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "{plist=Apple; AnimalSmells = { pig = piggish; lamb = lambish; worm = wormy; }; AnimalSounds = { pig = oink; lamb = baa; worm = baa;  Lisa = \"Why is the worm talking like a lamb?\" } ; AnimalColors = { pig = pink; lamb = black; worm = pink; } } "

    .line 477
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, " (\"San Francisco\", \"New York\", \"Seoul\", \"London\", \"Seattle\", \"Shanghai\")"

    .line 481
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 482
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<a ichi=\'1\' ni=\'2\'><b>The content of b</b> and <c san=\'3\'>The content of c</c><d>do</d><e></e><d>re</d><f/><d>mi</d></a>"

    .line 485
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 487
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 491
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\nTesting Exceptions: "

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_afe
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_afe} :catch_cc2

    .line 500
    :try_start_afe
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_b03
    .catch Ljava/lang/Exception; {:try_start_afe .. :try_end_b03} :catch_b1a

    const-wide/high16 v6, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    .line 501
    :try_start_b05
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    const-wide/high16 v6, 0x7ff8000000000000L  # Double.NaN

    .line 502
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 503
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b16
    .catch Ljava/lang/Exception; {:try_start_b05 .. :try_end_b16} :catch_b17

    goto :goto_b22

    :catch_b17
    move-exception v0

    move-object v2, v1

    goto :goto_b1b

    :catch_b1a
    move-exception v0

    :goto_b1b
    move-object v1, v0

    .line 505
    :try_start_b1c
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v1, v2

    .line 507
    :goto_b22
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b27
    .catch Ljava/lang/Exception; {:try_start_b1c .. :try_end_b27} :catch_cc2

    .line 509
    :try_start_b27
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintStream;->println(D)V
    :try_end_b30
    .catch Ljava/lang/Exception; {:try_start_b27 .. :try_end_b30} :catch_b31

    goto :goto_b38

    :catch_b31
    move-exception v0

    move-object v2, v0

    .line 511
    :try_start_b33
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 513
    :goto_b38
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b3d
    .catch Ljava/lang/Exception; {:try_start_b33 .. :try_end_b3d} :catch_cc2

    .line 515
    :try_start_b3d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "howard"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintStream;->println(D)V
    :try_end_b48
    .catch Ljava/lang/Exception; {:try_start_b3d .. :try_end_b48} :catch_b49

    goto :goto_b50

    :catch_b49
    move-exception v0

    move-object v2, v0

    .line 517
    :try_start_b4b
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 519
    :goto_b50
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b55
    .catch Ljava/lang/Exception; {:try_start_b4b .. :try_end_b55} :catch_cc2

    .line 521
    :try_start_b55
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "howard"

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_b61
    .catch Ljava/lang/Exception; {:try_start_b55 .. :try_end_b61} :catch_b62

    goto :goto_b69

    :catch_b62
    move-exception v0

    move-object v2, v0

    .line 523
    :try_start_b64
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 525
    :goto_b69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b6e
    .catch Ljava/lang/Exception; {:try_start_b64 .. :try_end_b6e} :catch_cc2

    .line 527
    :try_start_b6e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintStream;->println(D)V
    :try_end_b78
    .catch Ljava/lang/Exception; {:try_start_b6e .. :try_end_b78} :catch_b79

    goto :goto_b80

    :catch_b79
    move-exception v0

    move-object v2, v0

    .line 529
    :try_start_b7b
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 531
    :goto_b80
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b85
    .catch Ljava/lang/Exception; {:try_start_b7b .. :try_end_b85} :catch_cc2

    .line 533
    :try_start_b85
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_b8f
    .catch Ljava/lang/Exception; {:try_start_b85 .. :try_end_b8f} :catch_b90

    goto :goto_b97

    :catch_b90
    move-exception v0

    move-object v2, v0

    .line 535
    :try_start_b92
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 537
    :goto_b97
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b9c
    .catch Ljava/lang/Exception; {:try_start_b92 .. :try_end_b9c} :catch_cc2

    .line 539
    :try_start_b9c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v6, 0x7ff8000000000000L  # Double.NaN

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_ba7
    .catch Ljava/lang/Exception; {:try_start_b9c .. :try_end_ba7} :catch_ba8

    goto :goto_baf

    :catch_ba8
    move-exception v0

    move-object v1, v0

    .line 541
    :try_start_baa
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 543
    :goto_baf
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_bb4
    .catch Ljava/lang/Exception; {:try_start_baa .. :try_end_bb4} :catch_cc2

    :try_start_bb4
    const-string v1, "<a><b>    "

    .line 545
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_bba
    .catch Ljava/lang/Exception; {:try_start_bb4 .. :try_end_bba} :catch_bbb

    goto :goto_bc2

    :catch_bbb
    move-exception v0

    move-object v1, v0

    .line 547
    :try_start_bbd
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 549
    :goto_bc2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_bc7
    .catch Ljava/lang/Exception; {:try_start_bbd .. :try_end_bc7} :catch_cc2

    :try_start_bc7
    const-string v1, "<a></b>    "

    .line 551
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_bcd
    .catch Ljava/lang/Exception; {:try_start_bc7 .. :try_end_bcd} :catch_bce

    goto :goto_bd5

    :catch_bce
    move-exception v0

    move-object v1, v0

    .line 553
    :try_start_bd0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 555
    :goto_bd5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_bda
    .catch Ljava/lang/Exception; {:try_start_bd0 .. :try_end_bda} :catch_cc2

    :try_start_bda
    const-string v1, "<a></a    "

    .line 557
    invoke-static {v1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_be0
    .catch Ljava/lang/Exception; {:try_start_bda .. :try_end_be0} :catch_be1

    goto :goto_be8

    :catch_be1
    move-exception v0

    move-object v1, v0

    .line 559
    :try_start_be3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 561
    :goto_be8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_bed
    .catch Ljava/lang/Exception; {:try_start_be3 .. :try_end_bed} :catch_cc2

    .line 563
    :try_start_bed
    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 564
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c00
    .catch Ljava/lang/Exception; {:try_start_bed .. :try_end_c00} :catch_c01

    goto :goto_c08

    :catch_c01
    move-exception v0

    move-object v1, v0

    .line 566
    :try_start_c03
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 569
    :goto_c08
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c0d
    .catch Ljava/lang/Exception; {:try_start_c03 .. :try_end_c0d} :catch_cc2

    :try_start_c0d
    const-string v1, "[)"

    .line 572
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 573
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c1d
    .catch Ljava/lang/Exception; {:try_start_c0d .. :try_end_c1d} :catch_c1e

    goto :goto_c25

    :catch_c1e
    move-exception v0

    move-object v1, v0

    .line 575
    :try_start_c20
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 578
    :goto_c25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c2a
    .catch Ljava/lang/Exception; {:try_start_c20 .. :try_end_c2a} :catch_cc2

    :try_start_c2a
    const-string v1, "<xml"

    .line 581
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 582
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c3a
    .catch Ljava/lang/Exception; {:try_start_c2a .. :try_end_c3a} :catch_c3b

    goto :goto_c42

    :catch_c3b
    move-exception v0

    move-object v1, v0

    .line 584
    :try_start_c3d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 587
    :goto_c42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c47
    .catch Ljava/lang/Exception; {:try_start_c3d .. :try_end_c47} :catch_cc2

    :try_start_c47
    const-string v1, "<right></wrong>"

    .line 590
    invoke-static {v1}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 591
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c57
    .catch Ljava/lang/Exception; {:try_start_c47 .. :try_end_c57} :catch_c58

    goto :goto_c5f

    :catch_c58
    move-exception v0

    move-object v1, v0

    .line 593
    :try_start_c5a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 596
    :goto_c5f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c64
    .catch Ljava/lang/Exception; {:try_start_c5a .. :try_end_c64} :catch_cc2

    :try_start_c64
    const-string v1, "{\"koda\": true, \"koda\": true}"

    .line 599
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c6b
    .catch Ljava/lang/Exception; {:try_start_c64 .. :try_end_c6b} :catch_c7a

    .line 600
    :try_start_c6b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c75
    .catch Ljava/lang/Exception; {:try_start_c6b .. :try_end_c75} :catch_c76

    goto :goto_c82

    :catch_c76
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    goto :goto_c7c

    :catch_c7a
    move-exception v0

    move-object v1, v0

    .line 602
    :goto_c7c
    :try_start_c7c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v2, v4

    .line 605
    :goto_c82
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c87
    .catch Ljava/lang/Exception; {:try_start_c7c .. :try_end_c87} :catch_cc2

    .line 607
    :try_start_c87
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 608
    invoke-virtual {v1}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v1

    const-string v3, "bosanda"

    invoke-virtual {v1, v3}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v3, "MARIE HAA\'S"

    invoke-virtual {v1, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v3, "bosanda"

    invoke-virtual {v1, v3}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v1

    const-string v3, "MARIE HAA\\\'S"

    invoke-virtual {v1, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 616
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_cb9
    .catch Ljava/lang/Exception; {:try_start_c87 .. :try_end_cb9} :catch_cba

    goto :goto_ccd

    :catch_cba
    move-exception v0

    move-object v1, v0

    .line 618
    :try_start_cbc
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_cc1
    .catch Ljava/lang/Exception; {:try_start_cbc .. :try_end_cc1} :catch_cc2

    goto :goto_ccd

    :catch_cc2
    move-exception v0

    move-object v1, v0

    .line 621
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_ccd
    return-void
.end method
