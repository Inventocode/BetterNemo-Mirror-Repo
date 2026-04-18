.class public Lorg/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3e

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_36

    const/16 v4, 0x26

    if-eq v3, v4, :cond_30

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_24

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    :cond_24
    const-string v3, "&gt;"

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    :cond_2a
    const-string v3, "&lt;"

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    :cond_30
    const-string v3, "&amp;"

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    :cond_36
    const-string v3, "&quot;"

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 97
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static noSpace(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_32

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 113
    :cond_16
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' contains a space character."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    return-void

    .line 109
    :cond_33
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Empty string."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 150
    sget-object v1, Lorg/json/XML;->BANG:Ljava/lang/Character;

    const-string v2, "content"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6c

    .line 151
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result p2

    const/16 v0, 0x2d

    if-ne p2, v0, :cond_24

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result p1

    if-ne p1, v0, :cond_20

    const-string p1, "-->"

    .line 154
    invoke-virtual {p0, p1}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    return v4

    .line 157
    :cond_20
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    goto :goto_4f

    :cond_24
    const/16 v0, 0x5b

    if-ne p2, v0, :cond_4f

    .line 159
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "CDATA"

    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 161
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result p2

    if-ne p2, v0, :cond_48

    .line 162
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_47

    .line 164
    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_47
    return v4

    :cond_48
    const-string p1, "Expected \'CDATA[\'"

    .line 169
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 173
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 176
    sget-object p2, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne p1, p2, :cond_5c

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 178
    :cond_5c
    sget-object p2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne p1, p2, :cond_62

    add-int/lit8 v3, v3, -0x1

    :cond_62
    :goto_62
    if-gtz v3, :cond_4f

    return v4

    :cond_65
    const-string p1, "Missing \'>\' after \'<!\'."

    .line 175
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 183
    :cond_6c
    sget-object v1, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_76

    const-string p1, "?>"

    .line 187
    invoke-virtual {p0, p1}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    return v4

    .line 189
    :cond_76
    sget-object v1, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_ca

    .line 193
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_b4

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 200
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne p1, p2, :cond_8f

    return v3

    :cond_8f
    const-string p1, "Misshaped close tag"

    .line 201
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 198
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 195
    :cond_b4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched close tag"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 205
    :cond_ca
    instance-of p2, v0, Ljava/lang/Character;

    const-string v1, "Misshaped tag"

    if-nez p2, :cond_18a

    .line 211
    check-cast v0, Ljava/lang/String;

    .line 213
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    :goto_d8
    move-object v6, v5

    :goto_d9
    if-nez v6, :cond_df

    .line 216
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 221
    :cond_df
    instance-of v7, v6, Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_10d

    .line 222
    check-cast v6, Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 224
    sget-object v9, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v7, v9, :cond_108

    .line 225
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 226
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_101

    .line 229
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d8

    :cond_101
    const-string p1, "Missing value"

    .line 227
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 232
    :cond_108
    invoke-virtual {p2, v6, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v6, v7

    goto :goto_d9

    .line 237
    :cond_10d
    sget-object v5, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v6, v5, :cond_122

    .line 238
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v2, v3, :cond_11d

    .line 241
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return v4

    .line 239
    :cond_11d
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 246
    :cond_122
    sget-object v5, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v6, v5, :cond_185

    .line 248
    :cond_126
    :goto_126
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_145

    if-nez v0, :cond_12f

    return v4

    .line 251
    :cond_12f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unclosed tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 254
    :cond_145
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_159

    .line 255
    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_126

    .line 257
    invoke-static {v1}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_126

    .line 262
    :cond_159
    sget-object v5, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v5, :cond_126

    .line 263
    invoke-static {p0, p2, v0}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 264
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_16d

    .line 265
    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_184

    .line 266
    :cond_16d
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-ne p0, v3, :cond_181

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_181

    .line 268
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_184

    .line 270
    :cond_181
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_184
    return v4

    .line 277
    :cond_185
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    .line 206
    :cond_18a
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 300
    new-instance v1, Lorg/json/XMLTokener;

    invoke-direct {v1, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 301
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONTokener;->more()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "<"

    invoke-virtual {v1, p0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x0

    .line 302
    invoke-static {v1, v0, p0}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_a

    :cond_1d
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, v0}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    instance-of v1, p0, Lorg/json/JSONObject;

    const-string v2, "/>"

    const-string v3, "</"

    const/4 v4, 0x0

    if-eqz v1, :cond_de

    const/16 v1, 0x3c

    const/16 v5, 0x3e

    if-eqz p1, :cond_1d

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    :cond_1d
    check-cast p0, Lorg/json/JSONObject;

    .line 350
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 351
    :cond_23
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 352
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, ""

    if-nez v8, :cond_3a

    move-object v8, v9

    .line 357
    :cond_3a
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_41

    .line 358
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    :cond_41
    const-string v10, "content"

    .line 365
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 366
    instance-of v7, v8, Lorg/json/JSONArray;

    if-eqz v7, :cond_6f

    .line 367
    check-cast v8, Lorg/json/JSONArray;

    .line 368
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v9, 0x0

    :goto_54
    if-ge v9, v7, :cond_23

    if-lez v9, :cond_5d

    const/16 v10, 0xa

    .line 371
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 373
    :cond_5d
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    .line 376
    :cond_6f
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 381
    :cond_7b
    instance-of v10, v8, Lorg/json/JSONArray;

    if-eqz v10, :cond_b4

    .line 382
    check-cast v8, Lorg/json/JSONArray;

    .line 383
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    :goto_86
    if-ge v10, v9, :cond_23

    .line 385
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 386
    instance-of v12, v11, Lorg/json/JSONArray;

    if-eqz v12, :cond_aa

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    invoke-static {v11}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b1

    .line 395
    :cond_aa
    invoke-static {v11, v7}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b1
    add-int/lit8 v10, v10, 0x1

    goto :goto_86

    .line 398
    :cond_b4
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    .line 406
    :cond_c5
    invoke-static {v8, v7}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    :cond_ce
    if-eqz p1, :cond_d9

    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    :cond_d9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 422
    :cond_de
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_103

    .line 423
    check-cast p0, Lorg/json/JSONArray;

    .line 424
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_e8
    if-ge v4, v1, :cond_fe

    .line 426
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_f3

    const-string v3, "array"

    goto :goto_f4

    :cond_f3
    move-object v3, p1

    .line 427
    :goto_f4
    invoke-static {v2, v3}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e8

    .line 429
    :cond_fe
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_103
    if-nez p0, :cond_108

    const-string p0, "null"

    goto :goto_110

    .line 431
    :cond_108
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_110
    if-nez p1, :cond_127

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_162

    :cond_127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "<"

    if-nez v0, :cond_142

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_162

    :cond_142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_162
    return-object p0
.end method
