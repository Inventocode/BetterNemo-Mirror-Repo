.class abstract Ljxl/biff/formula/BinaryOperator;
.super Ljxl/biff/formula/Operator;
.source "BinaryOperator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljxl/biff/formula/BinaryOperator;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 8

    .line 170
    invoke-virtual {p0}, Ljxl/biff/formula/Operator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 174
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_a
    if-ltz v3, :cond_24

    .line 176
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 179
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 180
    array-length v6, v2

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v2, v2

    array-length v6, v4

    invoke-static {v4, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    move-object v2, v5

    goto :goto_a

    .line 186
    :cond_24
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 187
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getToken()Ljxl/biff/formula/Token;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/formula/Token;->getCode()B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getOperands(Ljava/util/Stack;)V
    .registers 3

    .line 60
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    .line 61
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 63
    invoke-virtual {p0, v0}, Ljxl/biff/formula/Operator;->add(Ljxl/biff/formula/ParseItem;)V

    .line 64
    invoke-virtual {p0, p1}, Ljxl/biff/formula/Operator;->add(Ljxl/biff/formula/ParseItem;)V

    return-void
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 4

    .line 74
    invoke-virtual {p0}, Ljxl/biff/formula/Operator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 76
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 77
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method abstract getSymbol()Ljava/lang/String;
.end method

.method abstract getToken()Ljxl/biff/formula/Token;
.end method

.method public read([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
