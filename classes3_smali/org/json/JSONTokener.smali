.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private index:I

.field private lastChar:C

.field private reader:Ljava/io/Reader;

.field private useLastChar:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_10

    :cond_a
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_10
    iput-object p1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 56
    iput p1, p0, Lorg/json/JSONTokener;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 66
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static dehexchar(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x46

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_15
    const/16 v0, 0x61

    if-lt p0, v0, :cond_20

    const/16 v0, 0x66

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_20
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public back()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lorg/json/JSONTokener;->useLastChar:Z

    if-nez v0, :cond_f

    iget v0, p0, Lorg/json/JSONTokener;->index:I

    if-lez v0, :cond_f

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 79
    iput v0, p0, Lorg/json/JSONTokener;->index:I

    .line 80
    iput-boolean v1, p0, Lorg/json/JSONTokener;->useLastChar:Z

    return-void

    .line 77
    :cond_f
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public more()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 115
    :cond_8
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    const/4 v0, 0x1

    return v0
.end method

.method public next()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lorg/json/JSONTokener;->useLastChar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 127
    iput-boolean v1, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 128
    iget-char v0, p0, Lorg/json/JSONTokener;->lastChar:C

    if-eqz v0, :cond_11

    .line 129
    iget v1, p0, Lorg/json/JSONTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->index:I

    :cond_11
    return v0

    .line 135
    :cond_12
    :try_start_12
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_27

    if-gtz v0, :cond_1d

    .line 141
    iput-char v1, p0, Lorg/json/JSONTokener;->lastChar:C

    return v1

    .line 144
    :cond_1d
    iget v1, p0, Lorg/json/JSONTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->index:I

    int-to-char v0, v0

    .line 145
    iput-char v0, p0, Lorg/json/JSONTokener;->lastChar:C

    return v0

    :catch_27
    move-exception v0

    .line 137
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next(C)C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    if-ne v0, p1, :cond_7

    return v0

    .line 160
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' and instead saw \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public next(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 181
    :cond_5
    new-array v0, p1, [C

    .line 184
    iget-boolean v1, p0, Lorg/json/JSONTokener;->useLastChar:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 185
    iput-boolean v3, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 186
    iget-char v1, p0, Lorg/json/JSONTokener;->lastChar:C

    aput-char v1, v0, v3

    const/4 v3, 0x1

    :cond_14
    :goto_14
    if-ge v3, p1, :cond_2a

    .line 192
    :try_start_16
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    sub-int v4, p1, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_23

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2a

    add-int/2addr v3, v1

    goto :goto_14

    :catch_23
    move-exception p1

    .line 196
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 198
    :cond_2a
    iget v1, p0, Lorg/json/JSONTokener;->index:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/json/JSONTokener;->index:I

    if-lt v3, p1, :cond_3c

    sub-int/2addr p1, v2

    .line 204
    aget-char p1, v0, p1

    iput-char p1, p0, Lorg/json/JSONTokener;->lastChar:C

    .line 205
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_3c
    const-string p1, "Substring bounds error"

    .line 201
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 216
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_a
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-eqz v1, :cond_7e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7e

    const/16 v3, 0xd

    if-eq v1, v3, :cond_7e

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_22

    if-ne v1, p1, :cond_1e

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 246
    :cond_22
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    const/16 v4, 0x62

    if-eq v1, v4, :cond_78

    const/16 v4, 0x66

    if-eq v1, v4, :cond_72

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_6e

    const/16 v2, 0x72

    if-eq v1, v2, :cond_6a

    const/16 v2, 0x78

    const/16 v3, 0x10

    if-eq v1, v2, :cond_5c

    const/16 v2, 0x74

    if-eq v1, v2, :cond_56

    const/16 v2, 0x75

    if-eq v1, v2, :cond_48

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_48
    const/4 v1, 0x4

    .line 264
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_56
    const/16 v1, 0x9

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5c
    const/4 v1, 0x2

    .line 267
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 261
    :cond_6a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 255
    :cond_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_72
    const/16 v1, 0xc

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_78
    const/16 v1, 0x8

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_7e
    const-string p1, "Unterminated string"

    .line 244
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-eq v1, p1, :cond_1a

    if-eqz v1, :cond_1a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_16

    goto :goto_1a

    .line 299
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_1f

    .line 295
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 297
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1e

    if-eqz v1, :cond_1e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1a

    goto :goto_1e

    .line 322
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_23

    .line 318
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 320
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_62

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_59

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_50

    const/16 v1, 0x27

    if-eq v0, v1, :cond_62

    const/16 v1, 0x28

    if-eq v0, v1, :cond_59

    .line 360
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1d
    const/16 v2, 0x20

    if-lt v0, v2, :cond_31

    const-string v2, ",:]}/\\\"[{;=#"

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_31

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    goto :goto_1d

    .line 365
    :cond_31
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 371
    invoke-static {v0}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_49
    const-string v0, "Missing value"

    .line 369
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 343
    :cond_50
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 344
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    return-object v0

    .line 347
    :cond_59
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 348
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    return-object v0

    .line 341
    :cond_62
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipTo(C)C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 385
    :try_start_0
    iget v0, p0, Lorg/json/JSONTokener;->index:I

    .line 386
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/io/Reader;->mark(I)V

    .line 388
    :cond_a
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-nez v1, :cond_18

    .line 390
    iget-object p1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 391
    iput v0, p0, Lorg/json/JSONTokener;->index:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_1e

    return v1

    :cond_18
    if-ne v1, p1, :cond_a

    .line 399
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    return v1

    :catch_1e
    move-exception p1

    .line 396
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .registers 4

    .line 410
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
