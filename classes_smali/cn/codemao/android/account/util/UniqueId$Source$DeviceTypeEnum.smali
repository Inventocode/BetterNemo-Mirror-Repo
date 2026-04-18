.class final enum Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
.super Ljava/lang/Enum;
.source "UniqueId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/UniqueId$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum ANDROIDID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum DEFAULT:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum IDFA:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum IMEI:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum MAC:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum OAID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

.field public static final enum SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;


# instance fields
.field private description:Ljava/lang/String;

.field private deviceIdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 521
    new-instance v0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v1, "IMEI"

    const/4 v2, 0x0

    const-string v3, "imei"

    invoke-direct {v0, v1, v2, v3, v3}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->IMEI:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 522
    new-instance v1, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v3, "OAID"

    const/4 v4, 0x1

    const-string v5, "oaid"

    invoke-direct {v1, v3, v4, v5, v5}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->OAID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 523
    new-instance v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v5, "ANDROIDID"

    const/4 v6, 0x2

    const-string v7, "android_id"

    invoke-direct {v3, v5, v6, v7, v7}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->ANDROIDID:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 524
    new-instance v5, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v7, "MAC"

    const/4 v8, 0x3

    const-string v9, "mac"

    invoke-direct {v5, v7, v8, v9, v9}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->MAC:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 525
    new-instance v7, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v9, "SERIALNO"

    const/4 v10, 0x4

    const-string v11, "serial_no"

    invoke-direct {v7, v9, v10, v11, v11}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->SERIALNO:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 526
    new-instance v9, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v11, "IDFA"

    const/4 v12, 0x5

    const-string v13, "idfa"

    invoke-direct {v9, v11, v12, v13, v13}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->IDFA:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    .line 527
    new-instance v11, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const-string v13, "DEFAULT"

    const/4 v14, 0x6

    const-string v15, "null"

    invoke-direct {v11, v13, v14, v15, v15}, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->DEFAULT:Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 520
    sput-object v13, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->$VALUES:[Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 532
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 533
    iput-object p3, p0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->deviceIdType:Ljava/lang/String;

    .line 534
    iput-object p4, p0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    .registers 2

    .line 520
    const-class v0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;
    .registers 1

    .line 520
    sget-object v0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->$VALUES:[Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    invoke-virtual {v0}, [Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 542
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .registers 2

    .line 538
    iget-object v0, p0, Lcn/codemao/android/account/util/UniqueId$Source$DeviceTypeEnum;->deviceIdType:Ljava/lang/String;

    return-object v0
.end method
