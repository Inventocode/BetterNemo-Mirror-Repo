.class public Lorg/json/CDL;
.super Ljava/lang/Object;
.source "CDL.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lorg/json/JSONTokener;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_2d

    const/16 v1, 0x22

    if-eq v0, v1, :cond_28

    const/16 v1, 0x27

    if-eq v0, v1, :cond_28

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_22

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_22
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    const-string p0, ""

    return-object p0

    .line 65
    :cond_28
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static rowToJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 84
    :goto_5
    invoke-static {p0}, Lorg/json/CDL;->getValue(Lorg/json/JSONTokener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    goto :goto_57

    .line 88
    :cond_18
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    :cond_1b
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_24

    goto :goto_5

    :cond_24
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xa

    if-eq v1, v2, :cond_56

    const/16 v2, 0xd

    if-eq v1, v2, :cond_56

    if-nez v1, :cond_33

    goto :goto_56

    .line 98
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad character \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_56
    :goto_56
    return-object v0

    :cond_57
    :goto_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static rowToJSONObject(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 117
    invoke-static {p1}, Lorg/json/CDL;->rowToJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 118
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static rowToString(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 6

    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 192
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_47

    const/16 v2, 0x2c

    if-lez v1, :cond_13

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 198
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_41

    const/16 v2, 0x22

    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_37

    const/16 v2, 0x27

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_44

    .line 205
    :cond_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_44

    .line 210
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_47
    const/16 p0, 0xa

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/CDL;->toJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONArray(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 153
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/json/CDL;->toJSONArray(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONArray(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 166
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 169
    :cond_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 171
    :goto_f
    invoke-static {p0, p1}, Lorg/json/CDL;->rowToJSONObject(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 177
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_1c

    return-object v0

    :cond_1c
    return-object v1

    .line 175
    :cond_1d
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    :cond_21
    :goto_21
    return-object v0
.end method

.method public static toJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lorg/json/CDL;->rowToJSONArray(Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/json/CDL;->toJSONArray(Lorg/json/JSONArray;Lorg/json/JSONTokener;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 230
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/json/CDL;->rowToString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Lorg/json/CDL;->toString(Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toString(Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_2e

    .line 249
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 252
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 253
    :goto_f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 254
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 256
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lorg/json/CDL;->rowToString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 259
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method
