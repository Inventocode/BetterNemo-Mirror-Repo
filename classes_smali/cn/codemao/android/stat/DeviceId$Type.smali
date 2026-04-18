.class public final enum Lcn/codemao/android/stat/DeviceId$Type;
.super Ljava/lang/Enum;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/stat/DeviceId$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/stat/DeviceId$Type;

.field public static final enum ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

.field public static final enum DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

.field public static final enum OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 16
    new-instance v0, Lcn/codemao/android/stat/DeviceId$Type;

    const-string v1, "DEVELOPER_SUPPLIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/stat/DeviceId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    .line 17
    new-instance v1, Lcn/codemao/android/stat/DeviceId$Type;

    const-string v3, "OPEN_UDID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/codemao/android/stat/DeviceId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    .line 18
    new-instance v3, Lcn/codemao/android/stat/DeviceId$Type;

    const-string v5, "ADVERTISING_ID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/codemao/android/stat/DeviceId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/codemao/android/stat/DeviceId$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcn/codemao/android/stat/DeviceId$Type;->$VALUES:[Lcn/codemao/android/stat/DeviceId$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/stat/DeviceId$Type;
    .registers 2

    .line 15
    const-class v0, Lcn/codemao/android/stat/DeviceId$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/stat/DeviceId$Type;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/stat/DeviceId$Type;
    .registers 1

    .line 15
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->$VALUES:[Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v0}, [Lcn/codemao/android/stat/DeviceId$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/stat/DeviceId$Type;

    return-object v0
.end method
