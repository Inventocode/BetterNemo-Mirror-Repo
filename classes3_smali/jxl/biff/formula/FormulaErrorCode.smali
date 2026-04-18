.class public Ljxl/biff/formula/FormulaErrorCode;
.super Ljava/lang/Object;
.source "FormulaErrorCode.java"


# static fields
.field public static final DIV0:Ljxl/biff/formula/FormulaErrorCode;

.field public static final REF:Ljxl/biff/formula/FormulaErrorCode;

.field public static final UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

.field public static final VALUE:Ljxl/biff/formula/FormulaErrorCode;

.field private static codes:[Ljxl/biff/formula/FormulaErrorCode;


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/formula/FormulaErrorCode;

    .line 40
    sput-object v1, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    .line 126
    new-instance v1, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v2, 0xff

    const-string v3, "?"

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    .line 128
    new-instance v1, Ljxl/biff/formula/FormulaErrorCode;

    const-string v2, "#NULL!"

    invoke-direct {v1, v0, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    .line 130
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/4 v1, 0x7

    const-string v2, "#DIV/0!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->DIV0:Ljxl/biff/formula/FormulaErrorCode;

    .line 132
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0xf

    const-string v2, "#VALUE!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->VALUE:Ljxl/biff/formula/FormulaErrorCode;

    .line 134
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x17

    const-string v2, "#REF!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->REF:Ljxl/biff/formula/FormulaErrorCode;

    .line 136
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x1d

    const-string v2, "#NAME?"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    .line 138
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x24

    const-string v2, "#NUM!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    .line 140
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x2a

    const-string v2, "#N/A!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Ljxl/biff/formula/FormulaErrorCode;->errorCode:I

    .line 51
    iput-object p2, p0, Ljxl/biff/formula/FormulaErrorCode;->description:Ljava/lang/String;

    .line 52
    sget-object p1, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/formula/FormulaErrorCode;

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    sget-object p1, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length p1, p1

    aput-object p0, p2, p1

    .line 55
    sput-object p2, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    return-void
.end method

.method public static getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;
    .registers 6

    .line 87
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    :goto_4
    sget-object v3, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length v4, v3

    if-ge v1, v4, :cond_17

    if-nez v2, :cond_17

    .line 90
    aget-object v4, v3, v1

    iget v4, v4, Ljxl/biff/formula/FormulaErrorCode;->errorCode:I

    if-ne v4, p0, :cond_14

    .line 93
    aget-object v0, v3, v1

    const/4 v2, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    return-object v0
.end method

.method public static getErrorCode(Ljava/lang/String;)Ljxl/biff/formula/FormulaErrorCode;
    .registers 6

    .line 108
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    if-eqz p0, :cond_26

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_26

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    :goto_d
    sget-object v3, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length v4, v3

    if-ge v1, v4, :cond_26

    if-nez v2, :cond_26

    .line 117
    aget-object v3, v3, v1

    iget-object v3, v3, Ljxl/biff/formula/FormulaErrorCode;->description:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 120
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_26
    :goto_26
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 65
    iget v0, p0, Ljxl/biff/formula/FormulaErrorCode;->errorCode:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Ljxl/biff/formula/FormulaErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
