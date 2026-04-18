.class public final Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;
.super Ljava/lang/Object;
.source "BluetoothPermissionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothPermissionRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothPermissionRequest.kt\ncom/codemao/toolssdk/utils/BluetoothPermissionRequest\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,66:1\n37#2,2:67\n*S KotlinDebug\n*F\n+ 1 BluetoothPermissionRequest.kt\ncom/codemao/toolssdk/utils/BluetoothPermissionRequest\n*L\n11#1:67,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final androidSPermission(Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_46

    .line 20
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->getRecommendedScanRuntimePermissions()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "recommendedScanRuntimePermissions"

    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2b

    .line 22
    aget-object v1, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_2b
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->getRecommendedConnectRuntimePermissions()[Ljava/lang/String;

    move-result-object p1

    const-string v1, "recommendedConnectRuntimePermissions"

    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    if-nez v1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    xor-int/2addr v1, v3

    if-eqz v1, :cond_46

    .line 26
    aget-object p1, p1, v4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_46
    return-object v0
.end method

.method public static final getBluetoothPermission(Lcom/polidea/rxandroidble2_codemao/RxBleClient;)[Ljava/lang/String;
    .registers 2

    .line 11
    sget-object v0, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->androidSPermission(Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final isRequestAndroidSBlueEnablePermissionGranted(Ljava/util/List;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient;",
            ")Z"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_36

    .line 37
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->androidSPermission(Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_36

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_36
    return v1
.end method

.method public final isRequestLocationPermissionGranted(Ljava/util/List;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient;",
            ")Z"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    .line 53
    invoke-virtual {p2}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->getRecommendedScanRuntimePermissions()[Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    .line 54
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_36

    if-eqz p2, :cond_33

    .line 56
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v1
.end method
