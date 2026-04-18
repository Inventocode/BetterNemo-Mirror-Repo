.class Ljxl/biff/formula/DoubleValue;
.super Ljxl/biff/formula/NumberValue;
.source "DoubleValue.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Ljxl/biff/formula/DoubleValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/DoubleValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    return-void
.end method

.method constructor <init>(D)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 56
    iput-wide p1, p0, Ljxl/biff/formula/DoubleValue;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 68
    :try_start_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/biff/formula/DoubleValue;->value:D
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception p1

    .line 72
    sget-object v0, Ljxl/biff/formula/DoubleValue;->logger:Ljxl/common/Logger;

    invoke-virtual {v0, p1, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Ljxl/biff/formula/DoubleValue;->value:D

    :goto_14
    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 5

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 99
    sget-object v1, Ljxl/biff/formula/Token;->DOUBLE:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 101
    iget-wide v1, p0, Ljxl/biff/formula/DoubleValue;->value:D

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    return-object v0
.end method

.method public getValue()D
    .registers 3

    .line 113
    iget-wide v0, p0, Ljxl/biff/formula/DoubleValue;->value:D

    return-wide v0
.end method

.method public read([BI)I
    .registers 3

    .line 86
    invoke-static {p1, p2}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide p1

    iput-wide p1, p0, Ljxl/biff/formula/DoubleValue;->value:D

    const/16 p1, 0x8

    return p1
.end method
