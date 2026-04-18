.class final Lorg/json/JSONObject$Null;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Null"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject$1;)V
    .registers 2

    .line 95
    invoke-direct {p0}, Lorg/json/JSONObject$Null;-><init>()V

    return-void
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_7

    if-ne p1, p0, :cond_5

    goto :goto_7

    :cond_5
    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 p1, 0x1

    :goto_8
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "null"

    return-object v0
.end method
