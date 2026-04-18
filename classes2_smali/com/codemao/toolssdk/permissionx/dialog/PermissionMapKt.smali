.class public final Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;
.super Ljava/lang/Object;
.source "PermissionMap.kt"


# static fields
.field private static final allSpecialPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnQ:Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnR:Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnS:Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final permissionMapOnTiramisu:Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v2, "android.permission.WRITE_SETTINGS"

    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 34
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->allSpecialPermissions:Ljava/util/Set;

    const/16 v1, 0x1e

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "android.permission.READ_CALENDAR"

    const-string v3, "android.permission-group.CALENDAR"

    .line 45
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 46
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission-group.CALL_LOG"

    .line 47
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const-string v2, "android.permission.WRITE_CALL_LOG"

    .line 48
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v1, v7

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 49
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "android.permission.CAMERA"

    const-string v5, "android.permission-group.CAMERA"

    .line 50
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "android.permission.READ_CONTACTS"

    const-string v5, "android.permission-group.CONTACTS"

    .line 51
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "android.permission.WRITE_CONTACTS"

    .line 52
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 53
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission-group.LOCATION"

    .line 54
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v1, v8

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 55
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v1, v8

    .line 56
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission-group.MICROPHONE"

    .line 57
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission-group.PHONE"

    .line 58
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0xd

    aput-object v0, v1, v5

    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 59
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0xe

    aput-object v0, v1, v5

    const-string v0, "android.permission.CALL_PHONE"

    .line 60
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0xf

    aput-object v0, v1, v5

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 61
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x10

    aput-object v0, v1, v5

    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 62
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x11

    aput-object v0, v1, v5

    const-string v0, "android.permission.USE_SIP"

    .line 63
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x12

    aput-object v0, v1, v5

    const-string v0, "android.permission.ACCEPT_HANDOVER"

    .line 64
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "android.permission.BODY_SENSORS"

    const-string v2, "android.permission-group.SENSORS"

    .line 65
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    const-string v2, "android.permission-group.ACTIVITY_RECOGNITION"

    .line 66
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "android.permission.SEND_SMS"

    const-string v2, "android.permission-group.SMS"

    .line 67
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x16

    aput-object v0, v1, v5

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 68
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x17

    aput-object v0, v1, v5

    const-string v0, "android.permission.READ_SMS"

    .line 69
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x18

    aput-object v0, v1, v5

    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 70
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x19

    aput-object v0, v1, v5

    const-string v0, "android.permission.RECEIVE_MMS"

    .line 71
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission-group.STORAGE"

    .line 72
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x1b

    aput-object v0, v1, v5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 73
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x1c

    aput-object v0, v1, v5

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 74
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v5, 0x1d

    aput-object v0, v1, v5

    .line 44
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnQ:Ljava/util/Map;

    .line 81
    sput-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnR:Ljava/util/Map;

    new-array v1, v7, [Lkotlin/Pair;

    const-string v5, "android.permission.BLUETOOTH_SCAN"

    const-string v8, "android.permission-group.NEARBY_DEVICES"

    .line 88
    invoke-static {v5, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v5, "android.permission.BLUETOOTH_ADVERTISE"

    .line 89
    invoke-static {v5, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "android.permission.BLUETOOTH_CONNECT"

    .line 90
    invoke-static {v5, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v6

    .line 87
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 92
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 93
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnS:Ljava/util/Map;

    new-array v1, v7, [Lkotlin/Pair;

    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    .line 97
    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    .line 98
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    .line 99
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v6

    .line 96
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 100
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 101
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnTiramisu:Ljava/util/Map;

    return-void
.end method

.method public static final getAllSpecialPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->allSpecialPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public static final getPermissionMapOnQ()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnQ:Ljava/util/Map;

    return-object v0
.end method

.method public static final getPermissionMapOnR()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnR:Ljava/util/Map;

    return-object v0
.end method

.method public static final getPermissionMapOnS()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnS:Ljava/util/Map;

    return-object v0
.end method

.method public static final getPermissionMapOnTiramisu()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->permissionMapOnTiramisu:Ljava/util/Map;

    return-object v0
.end method
