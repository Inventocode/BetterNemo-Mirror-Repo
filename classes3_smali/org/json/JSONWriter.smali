.class public Lorg/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0x14


# instance fields
.field private comma:Z

.field protected mode:C

.field private stack:[Lorg/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    const/16 v1, 0x69

    .line 98
    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/json/JSONObject;

    .line 99
    iput-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    .line 100
    iput v0, p0, Lorg/json/JSONWriter;->top:I

    .line 101
    iput-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    .line 114
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_15

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 129
    :cond_d
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Value out of sequence."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_15
    :goto_15
    :try_start_15
    iget-boolean v3, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v3, :cond_22

    if-ne v0, v1, :cond_22

    .line 117
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 119
    :cond_22
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_33

    .line 123
    iget-char p1, p0, Lorg/json/JSONWriter;->mode:C

    if-ne p1, v2, :cond_2f

    const/16 p1, 0x6b

    .line 124
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    :cond_2f
    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0

    :catch_33
    move-exception p1

    .line 121
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 112
    :cond_3a
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Null pointer"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private end(CC)Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, p1, :cond_13

    .line 160
    new-instance p2, Lorg/json/JSONException;

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_d

    const-string p1, "Misplaced endObject."

    goto :goto_f

    :cond_d
    const-string p1, "Misplaced endArray."

    :goto_f
    invoke-direct {p2, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 163
    :cond_13
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->pop(C)V

    .line 165
    :try_start_16
    iget-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1f

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0

    :catch_1f
    move-exception p1

    .line 167
    new-instance p2, Lorg/json/JSONException;

    invoke-direct {p2, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private pop(C)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 254
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const-string v1, "Nesting error."

    if-lez v0, :cond_34

    .line 257
    iget-object v2, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    const/16 v4, 0x61

    const/16 v5, 0x6b

    if-nez v3, :cond_15

    const/16 v3, 0x61

    goto :goto_17

    :cond_15
    const/16 v3, 0x6b

    :goto_17
    if-ne v3, p1, :cond_2e

    add-int/lit8 v0, v0, -0x1

    .line 261
    iput v0, p0, Lorg/json/JSONWriter;->top:I

    if-nez v0, :cond_22

    const/16 v4, 0x64

    goto :goto_2b

    :cond_22
    add-int/lit8 v0, v0, -0x1

    .line 262
    aget-object p1, v2, v0

    if-nez p1, :cond_29

    goto :goto_2b

    :cond_29
    const/16 v4, 0x6b

    :goto_2b
    iput-char v4, p0, Lorg/json/JSONWriter;->mode:C

    return-void

    .line 259
    :cond_2e
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_34
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private push(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_18

    .line 274
    iget-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    aput-object p1, v1, v0

    if-nez p1, :cond_f

    const/16 p1, 0x61

    goto :goto_11

    :cond_f
    const/16 p1, 0x6b

    .line 275
    :goto_11
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    add-int/lit8 v0, v0, 0x1

    .line 276
    iput v0, p0, Lorg/json/JSONWriter;->top:I

    return-void

    .line 272
    :cond_18
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Nesting too deep."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public array()Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 142
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_17

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_17

    const/16 v1, 0x61

    if-ne v0, v1, :cond_f

    goto :goto_17

    .line 148
    :cond_f
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    const-string v0, "["

    .line 144
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public endArray()Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x5d

    .line 180
    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    .line 190
    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_47

    .line 205
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_3f

    .line 207
    :try_start_8
    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_13

    .line 208
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 210
    :cond_13
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    const/16 p1, 0x6f

    .line 214
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p1

    .line 217
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 220
    :cond_3f
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Misplaced key."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_47
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Null key."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 234
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    const/16 v2, 0x69

    if-ne v0, v2, :cond_a

    .line 235
    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    .line 237
    :cond_a
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x61

    if-ne v0, v1, :cond_13

    goto :goto_1b

    .line 243
    :cond_13
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    const-string v0, "{"

    .line 238
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public value(D)Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 308
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Z)Lorg/json/JSONWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const-string p1, "true"

    goto :goto_7

    :cond_5
    const-string p1, "false"

    .line 288
    :goto_7
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method
