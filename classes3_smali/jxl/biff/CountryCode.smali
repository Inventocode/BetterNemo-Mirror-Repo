.class public Ljxl/biff/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"


# static fields
.field public static final UK:Ljxl/biff/CountryCode;

.field public static final UNKNOWN:Ljxl/biff/CountryCode;

.field public static final USA:Ljxl/biff/CountryCode;

.field private static codes:[Ljxl/biff/CountryCode;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private code:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 32
    const-class v0, Ljxl/biff/CountryCode;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/CountryCode;->logger:Ljxl/common/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/CountryCode;

    .line 52
    sput-object v0, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    .line 134
    new-instance v0, Ljxl/biff/CountryCode;

    const/4 v1, 0x1

    const-string v2, "US"

    const-string v3, "USA"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    .line 135
    new-instance v0, Ljxl/biff/CountryCode;

    const/4 v1, 0x2

    const-string v2, "CA"

    const-string v3, "Canada"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x1e

    const-string v2, "GR"

    const-string v3, "Greece"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x1f

    const-string v2, "NE"

    const-string v3, "Netherlands"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x20

    const-string v2, "BE"

    const-string v3, "Belgium"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x21

    const-string v2, "FR"

    const-string v3, "France"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x22

    const-string v2, "ES"

    const-string v3, "Spain"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x27

    const-string v2, "IT"

    const-string v3, "Italy"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x29

    const-string v2, "CH"

    const-string v3, "Switzerland"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2c

    const-string v2, "UK"

    const-string v3, "United Kingdowm"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    .line 151
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2d

    const-string v2, "DK"

    const-string v3, "Denmark"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2e

    const-string v2, "SE"

    const-string v3, "Sweden"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2f

    const-string v2, "NO"

    const-string v3, "Norway"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x31

    const-string v2, "DE"

    const-string v3, "Germany"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x3f

    const-string v2, "PH"

    const-string v3, "Philippines"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x56

    const-string v2, "CN"

    const-string v3, "China"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x5b

    const-string v2, "IN"

    const-string v3, "India"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljxl/biff/CountryCode;

    const v1, 0xffff

    const-string v2, "??"

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Ljxl/biff/CountryCode;->value:I

    .line 60
    iput-object p2, p0, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    .line 63
    sget-object p1, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/CountryCode;

    .line 64
    array-length p3, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    sget-object p1, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    array-length p1, p1

    aput-object p0, p2, p1

    .line 66
    sput-object p2, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    return-void
.end method

.method public static getCountryCode(Ljava/lang/String;)Ljxl/biff/CountryCode;
    .registers 5

    if-eqz p0, :cond_28

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_28

    .line 111
    :cond_a
    sget-object v0, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    const/4 v1, 0x0

    .line 112
    :goto_d
    sget-object v2, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    array-length v3, v2

    if-ge v1, v3, :cond_27

    sget-object v3, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    if-ne v0, v3, :cond_27

    .line 114
    aget-object v2, v2, v1

    iget-object v2, v2, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 116
    sget-object v0, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    aget-object v0, v0, v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-object v0

    .line 107
    :cond_28
    :goto_28
    sget-object p0, Ljxl/biff/CountryCode;->logger:Ljxl/common/Logger;

    const-string v0, "Please specify two character ISO 3166 country code"

    invoke-virtual {p0, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 108
    sget-object p0, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    return-object p0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 87
    iget v0, p0, Ljxl/biff/CountryCode;->value:I

    return v0
.end method
