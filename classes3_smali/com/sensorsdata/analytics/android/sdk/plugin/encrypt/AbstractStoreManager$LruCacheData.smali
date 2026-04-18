.class Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;
.super Ljava/lang/Object;
.source "AbstractStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LruCacheData"
.end annotation


# instance fields
.field private mCacheSPData:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;I)V
    .registers 4

    .line 487
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_12

    .line 489
    new-instance p1, Landroid/util/LruCache;

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->mCacheSPData:Landroid/util/LruCache;

    :cond_12
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_22

    .line 495
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->mCacheSPData:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->access$000(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_20

    .line 502
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->mCacheSPData:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->access$000(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .registers 5

    .line 507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_20

    .line 508
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->mCacheSPData:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->access$000(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method
