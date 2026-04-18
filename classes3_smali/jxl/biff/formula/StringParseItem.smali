.class Ljxl/biff/formula/StringParseItem;
.super Ljxl/biff/formula/ParseItem;
.source "StringParseItem.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/ParseItem;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method getString(Ljava/lang/StringBuffer;)V
    .registers 2

    return-void
.end method
