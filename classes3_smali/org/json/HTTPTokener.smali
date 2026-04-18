.class public Lorg/json/HTTPTokener;
.super Lorg/json/JSONTokener;
.source "HTTPTokener.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 55
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x27

    if-ne v1, v2, :cond_18

    goto :goto_2e

    :cond_18
    :goto_18
    if-eqz v1, :cond_29

    .line 70
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_29

    .line 73
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    goto :goto_18

    .line 71
    :cond_29
    :goto_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_41

    if-ne v2, v1, :cond_3d

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :cond_41
    const-string v0, "Unterminated string."

    .line 61
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method
