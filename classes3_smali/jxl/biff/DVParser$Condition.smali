.class public Ljxl/biff/DVParser$Condition;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/DVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field private static types:[Ljxl/biff/DVParser$Condition;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DVParser$Condition;

    .line 130
    sput-object v0, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Ljxl/biff/DVParser$Condition;->value:I

    .line 135
    new-instance p1, Ljava/text/MessageFormat;

    invoke-direct {p1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 136
    sget-object p1, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    .line 137
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/DVParser$Condition;

    sput-object p2, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    .line 138
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    sget-object p2, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method static getCondition(I)Ljxl/biff/DVParser$Condition;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    :goto_2
    sget-object v2, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    if-nez v0, :cond_14

    .line 147
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/DVParser$Condition;->value:I

    if-ne v3, p0, :cond_11

    .line 149
    aget-object v0, v2, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 157
    iget v0, p0, Ljxl/biff/DVParser$Condition;->value:I

    return v0
.end method
