.class public Ljxl/biff/BuiltInName;
.super Ljava/lang/Object;
.source "BuiltInName.java"


# static fields
.field public static final FILTER_DATABASE:Ljxl/biff/BuiltInName;

.field public static final PRINT_AREA:Ljxl/biff/BuiltInName;

.field public static final PRINT_TITLES:Ljxl/biff/BuiltInName;

.field private static builtInNames:[Ljxl/biff/BuiltInName;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/BuiltInName;

    .line 40
    sput-object v1, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    .line 92
    new-instance v1, Ljxl/biff/BuiltInName;

    const-string v2, "Consolidate_Area"

    invoke-direct {v1, v2, v0}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 94
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Auto_Open"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 96
    new-instance v0, Ljxl/biff/BuiltInName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 98
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Extract"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 100
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Database"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 102
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Criteria"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 104
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Print_Area"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    .line 106
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Print_Titles"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    .line 108
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Recorder"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 110
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Data_Form"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 112
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Auto_Activate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 114
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Auto_Deactivate"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 116
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Sheet_Title"

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    .line 118
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "_FilterDatabase"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->FILTER_DATABASE:Ljxl/biff/BuiltInName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljxl/biff/BuiltInName;->name:Ljava/lang/String;

    .line 47
    iput p2, p0, Ljxl/biff/BuiltInName;->value:I

    .line 49
    sget-object p1, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    .line 50
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/BuiltInName;

    sput-object p2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    sget-object p2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getBuiltInName(I)Ljxl/biff/BuiltInName;
    .registers 5

    .line 80
    sget-object v0, Ljxl/biff/BuiltInName;->FILTER_DATABASE:Ljxl/biff/BuiltInName;

    const/4 v1, 0x0

    .line 81
    :goto_3
    sget-object v2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 83
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/biff/BuiltInName;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_14

    .line 85
    sget-object v0, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    aget-object v0, v0, v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Ljxl/biff/BuiltInName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 72
    iget v0, p0, Ljxl/biff/BuiltInName;->value:I

    return v0
.end method
