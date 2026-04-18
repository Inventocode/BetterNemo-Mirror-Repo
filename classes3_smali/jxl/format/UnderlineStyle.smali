.class public final Ljxl/format/UnderlineStyle;
.super Ljava/lang/Object;
.source "UnderlineStyle.java"


# static fields
.field public static final NO_UNDERLINE:Ljxl/format/UnderlineStyle;

.field public static final SINGLE:Ljxl/format/UnderlineStyle;

.field private static styles:[Ljxl/format/UnderlineStyle;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/UnderlineStyle;

    .line 43
    sput-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    .line 103
    new-instance v1, Ljxl/format/UnderlineStyle;

    const-string v2, "none"

    invoke-direct {v1, v0, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    .line 106
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/4 v1, 0x1

    const-string v2, "single"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    .line 109
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/4 v1, 0x2

    const-string v2, "double"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    .line 112
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/16 v1, 0x21

    const-string v2, "single accounting"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    .line 115
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/16 v1, 0x22

    const-string v2, "double accounting"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Ljxl/format/UnderlineStyle;->value:I

    .line 56
    sget-object p1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    .line 57
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/UnderlineStyle;

    sput-object p2, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    sget-object p2, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getStyle(I)Ljxl/format/UnderlineStyle;
    .registers 4

    const/4 v0, 0x0

    .line 91
    :goto_1
    sget-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 93
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_13

    .line 95
    sget-object p0, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    aget-object p0, p0, v0

    return-object p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_16
    sget-object p0, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    return-object p0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 70
    iget v0, p0, Ljxl/format/UnderlineStyle;->value:I

    return v0
.end method
