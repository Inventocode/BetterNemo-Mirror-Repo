.class public Lio/socket/hasbinary/HasBinary;
.super Ljava/lang/Object;
.source "HasBinary.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lio/socket/hasbinary/HasBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _hasBinary(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 24
    :cond_4
    instance-of v1, p0, [B

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    .line 28
    :cond_a
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_38

    .line 29
    check-cast p0, Lorg/json/JSONArray;

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_63

    .line 34
    :try_start_17
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_23} :catch_2d

    .line 39
    :goto_23
    invoke-static {v4}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return v2

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catch_2d
    move-exception p0

    .line 36
    sget-object v1, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "An error occured while retrieving data from JSONArray"

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 43
    :cond_38
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_63

    .line 44
    check-cast p0, Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    :try_start_4e
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_52} :catch_59

    .line 55
    invoke-static {v3}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    return v2

    :catch_59
    move-exception p0

    .line 52
    sget-object v1, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "An error occured while retrieving data from JSONObject"

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    return v0
.end method

.method public static hasBinary(Ljava/lang/Object;)Z
    .registers 1

    .line 18
    invoke-static {p0}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
