.class public abstract Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;
.super Ljava/lang/Object;
.source "AbstractStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AbstractStoreManager"


# instance fields
.field protected mDefaultState:Z

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

.field private mMaxPluginType:Ljava/lang/String;

.field private mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

.field private final mStorePluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    .line 54
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;-><init>(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;I)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    .line 55
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStoreTypes:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    return-object p0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 456
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 457
    instance-of v3, v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->storeKeys()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 458
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->storeKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v2

    :cond_2c
    const/4 v1, 0x0

    .line 464
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_f0

    goto :goto_6f

    :sswitch_39
    const-string v3, "Float"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    goto :goto_6f

    :cond_42
    const/4 v2, 0x4

    goto :goto_6f

    :sswitch_44
    const-string v3, "Long"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    goto :goto_6f

    :cond_4d
    const/4 v2, 0x3

    goto :goto_6f

    :sswitch_4f
    const-string v3, "Bool"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    goto :goto_6f

    :cond_58
    const/4 v2, 0x2

    goto :goto_6f

    :sswitch_5a
    const-string v3, "Integer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_63

    goto :goto_6f

    :cond_63
    const/4 v2, 0x1

    goto :goto_6f

    :sswitch_65
    const-string v3, "String"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    packed-switch v2, :pswitch_data_106

    goto/16 :goto_eb

    .line 472
    :pswitch_74  #0x4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_eb

    .line 475
    :pswitch_8c  #0x3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_eb

    .line 478
    :pswitch_a4  #0x2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getBool(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_eb

    .line 469
    :pswitch_bc  #0x1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_eb

    .line 466
    :pswitch_d4  #0x0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_eb
    if-nez v1, :cond_ee

    goto :goto_ef

    :cond_ee
    move-object p3, v1

    :goto_ef
    return-object p3

    :sswitch_data_f0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_65
        -0x2811e6e2 -> :sswitch_5a
        0x1faf0a -> :sswitch_4f
        0x243a9c -> :sswitch_44
        0x40d323c -> :sswitch_39
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d4  #00000000
        :pswitch_bc  #00000001
        :pswitch_a4  #00000002
        :pswitch_8c  #00000003
        :pswitch_74  #00000004
    .end packed-switch
.end method

.method private removeUselessValue(Ljava/lang/String;)V
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 419
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    if-eq v1, v2, :cond_6

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    goto :goto_6

    :cond_2d
    return-void
.end method

.method private storeKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    .line 426
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 427
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 428
    instance-of v3, v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->storeKeys()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 429
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->storeKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v2

    .line 434
    :cond_2c
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_100

    goto :goto_6e

    :sswitch_38
    const-string v2, "Float"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_41

    goto :goto_6e

    :cond_41
    const/4 v1, 0x4

    goto :goto_6e

    :sswitch_43
    const-string v2, "Long"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4c

    goto :goto_6e

    :cond_4c
    const/4 v1, 0x3

    goto :goto_6e

    :sswitch_4e
    const-string v2, "Bool"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_57

    goto :goto_6e

    :cond_57
    const/4 v1, 0x2

    goto :goto_6e

    :sswitch_59
    const-string v2, "Integer"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_62

    goto :goto_6e

    :cond_62
    const/4 v1, 0x1

    goto :goto_6e

    :sswitch_64
    const-string v2, "String"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    packed-switch v1, :pswitch_data_116

    goto/16 :goto_ff

    .line 442
    :pswitch_73  #0x4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setFloat(Ljava/lang/String;F)V

    goto :goto_ff

    .line 445
    :pswitch_90  #0x3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setLong(Ljava/lang/String;J)V

    goto :goto_ff

    .line 448
    :pswitch_ad  #0x2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setBool(Ljava/lang/String;Z)V

    goto :goto_ff

    .line 439
    :pswitch_ca  #0x1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setInteger(Ljava/lang/String;I)V

    goto :goto_ff

    .line 436
    :pswitch_e7  #0x0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ff
    return-void

    :sswitch_data_100
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_64
        -0x2811e6e2 -> :sswitch_59
        0x1faf0a -> :sswitch_4e
        0x243a9c -> :sswitch_43
        0x40d323c -> :sswitch_38
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_e7  #00000000
        :pswitch_ca  #00000001
        :pswitch_ad  #00000002
        :pswitch_90  #00000003
        :pswitch_73  #00000004
    .end packed-switch
.end method


# virtual methods
.method public getBool(Ljava/lang/String;Z)Z
    .registers 7

    .line 212
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    .line 216
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_a5
    .catchall {:try_start_5 .. :try_end_13} :catchall_a3

    .line 236
    :goto_13
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 218
    :cond_19
    :try_start_19
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v1, :cond_2e

    const-string v0, "Bool"

    .line 219
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_13

    .line 221
    :cond_2e
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getBool(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 224
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    if-eq v0, v1, :cond_8d

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setBool(Ljava/lang/String;Z)V

    .line 228
    :cond_8d
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_96

    :cond_94
    move-object v0, v2

    goto :goto_34

    :cond_96
    :goto_96
    if-nez v0, :cond_99

    goto :goto_9d

    .line 232
    :cond_99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_9d} :catch_a5
    .catchall {:try_start_19 .. :try_end_9d} :catchall_a3

    .line 236
    :goto_9d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :catchall_a3
    move-exception p1

    goto :goto_c2

    :catch_a5
    move-exception v0

    :try_start_a6
    const-string v1, "SA.AbstractStoreManager"

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bc
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_a3

    .line 236
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :goto_c2
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 237
    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 7

    .line 272
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 274
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_19

    .line 276
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_a5
    .catchall {:try_start_5 .. :try_end_13} :catchall_a3

    .line 297
    :goto_13
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 278
    :cond_19
    :try_start_19
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v1, :cond_2e

    const-string v0, "Float"

    .line 279
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_13

    .line 282
    :cond_2e
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 285
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    if-eq v0, v1, :cond_8d

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setFloat(Ljava/lang/String;F)V

    .line 289
    :cond_8d
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_96

    :cond_94
    move-object v0, v2

    goto :goto_34

    :cond_96
    :goto_96
    if-nez v0, :cond_99

    goto :goto_9d

    .line 293
    :cond_99
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_9d} :catch_a5
    .catchall {:try_start_19 .. :try_end_9d} :catchall_a3

    .line 297
    :goto_9d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :catchall_a3
    move-exception p1

    goto :goto_c2

    :catch_a5
    move-exception v0

    :try_start_a6
    const-string v1, "SA.AbstractStoreManager"

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bc
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_a3

    .line 297
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :goto_c2
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 298
    throw p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 244
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_a5
    .catchall {:try_start_5 .. :try_end_13} :catchall_a3

    .line 266
    :goto_13
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 248
    :cond_19
    :try_start_19
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v1, :cond_2e

    const-string v0, "Integer"

    .line 249
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_13

    .line 251
    :cond_2e
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 254
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    if-eq v0, v1, :cond_8d

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setInteger(Ljava/lang/String;I)V

    .line 258
    :cond_8d
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_96

    :cond_94
    move-object v0, v2

    goto :goto_34

    :cond_96
    :goto_96
    if-nez v0, :cond_99

    goto :goto_9d

    .line 262
    :cond_99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_9d} :catch_a5
    .catchall {:try_start_19 .. :try_end_9d} :catchall_a3

    .line 266
    :goto_9d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :catchall_a3
    move-exception p1

    goto :goto_c2

    :catch_a5
    move-exception v0

    :try_start_a6
    const-string v1, "SA.AbstractStoreManager"

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bc
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_a3

    .line 266
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :goto_c2
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 267
    throw p1
.end method

.method public getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 9

    .line 303
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_a2
    .catchall {:try_start_5 .. :try_end_d} :catchall_a0

    if-eqz v0, :cond_15

    .line 327
    :goto_f
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 309
    :cond_15
    :try_start_15
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v1, :cond_26

    const-string v0, "Long"

    .line 310
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_f

    .line 312
    :cond_26
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 315
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    if-eq v0, v1, :cond_85

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setLong(Ljava/lang/String;J)V

    .line 319
    :cond_85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_8e

    :cond_8c
    move-object v0, v2

    goto :goto_2c

    :cond_8e
    :goto_8e
    if-nez v0, :cond_92

    move-wide v0, p2

    goto :goto_96

    .line 323
    :cond_92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_96
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_9a} :catch_a2
    .catchall {:try_start_15 .. :try_end_9a} :catchall_a0

    .line 327
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_a0
    move-exception p1

    goto :goto_c3

    :catch_a2
    move-exception v0

    :try_start_a3
    const-string v1, "SA.AbstractStoreManager"

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_a3 .. :try_end_b9} :catchall_a0

    .line 327
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 327
    :goto_c3
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 328
    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 181
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 183
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_96
    .catchall {:try_start_5 .. :try_end_d} :catchall_94

    if-eqz v0, :cond_15

    .line 206
    :goto_f
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 187
    :cond_15
    :try_start_15
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v1, :cond_22

    const-string v0, "String"

    .line 188
    invoke-direct {p0, p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_f

    .line 191
    :cond_22
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 194
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    if-eq v0, v1, :cond_81

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_86} :catch_96
    .catchall {:try_start_15 .. :try_end_86} :catchall_94

    move-object v0, v2

    goto :goto_8a

    :cond_88
    move-object v0, v2

    goto :goto_28

    :cond_8a
    :goto_8a
    if-nez v0, :cond_8d

    goto :goto_8e

    :cond_8d
    move-object p2, v0

    .line 206
    :goto_8e
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_94
    move-exception p1

    goto :goto_b3

    :catch_96
    move-exception v0

    :try_start_97
    const-string v1, "SA.AbstractStoreManager"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_97 .. :try_end_ad} :catchall_94

    .line 206
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :goto_b3
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    throw p1
.end method

.method public isExists(Ljava/lang/String;)Z
    .registers 7

    .line 381
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 383
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_4c
    .catchall {:try_start_6 .. :try_end_a} :catchall_4a

    if-eqz v1, :cond_12

    .line 394
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 386
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->isExists(Ljava/lang/String;)Z

    move-result v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3b} :catch_4c
    .catchall {:try_start_12 .. :try_end_3b} :catchall_4a

    if-eqz v2, :cond_18

    const/4 p1, 0x1

    .line 394
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_64

    :catchall_4a
    move-exception p1

    goto :goto_65

    :catch_4c
    move-exception v1

    :try_start_4d
    const-string v2, "SA.AbstractStoreManager"

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExists failed,key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_4a

    goto :goto_44

    :goto_64
    return v0

    .line 394
    :goto_65
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
    throw p1
.end method

.method protected isRegisterPlugin(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    .line 401
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/shared_prefs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_39

    return v3

    .line 405
    :cond_39
    invoke-static {p1, p2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SASpUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 406
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 407
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_67

    const-string p1, "SA.AbstractStoreManager"

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete sp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_63

    xor-int/2addr p1, v0

    return p1

    :catch_63
    move-exception p1

    .line 412
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_67
    return v0
.end method

.method public registerPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 67
    :cond_3
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string p1, "SA.AbstractStoreManager"

    const-string v0, "PluginType is null"

    .line 69
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_15
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStoreTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 73
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStoreTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 75
    :cond_23
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 76
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 77
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 84
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6

    .line 333
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 335
    :try_start_5
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v0, :cond_4f

    .line 336
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 337
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 338
    instance-of v3, v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    if-eqz v3, :cond_11

    move-object v3, v2

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->storeKeys()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object v3, v2

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;

    .line 339
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/DefaultStorePlugin;->storeKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v0, v2

    .line 344
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    goto :goto_78

    .line 346
    :cond_4f
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    goto :goto_55

    .line 350
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->remove(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7d} :catch_85
    .catchall {:try_start_5 .. :try_end_7d} :catchall_83

    .line 354
    :goto_7d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_9d

    :catchall_83
    move-exception p1

    goto :goto_9e

    :catch_85
    move-exception v0

    :try_start_86
    const-string v1, "SA.AbstractStoreManager"

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_86 .. :try_end_9c} :catchall_83

    goto :goto_7d

    :goto_9d
    return-void

    .line 354
    :goto_9e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 355
    throw p1
.end method

.method public setBool(Ljava/lang/String;Z)V
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    :try_start_5
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v0, :cond_18

    .line 116
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Bool"

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->storeKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_3d
    .catchall {:try_start_5 .. :try_end_12} :catchall_3b

    .line 125
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 119
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->removeUselessValue(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setBool(Ljava/lang/String;Z)V

    .line 121
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3d
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3b

    goto :goto_5c

    :catchall_3b
    move-exception p1

    goto :goto_62

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v1, "SA.AbstractStoreManager"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_3b

    .line 125
    :goto_5c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_62
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    throw p1
.end method

.method public setFloat(Ljava/lang/String;F)V
    .registers 7

    .line 147
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 149
    :try_start_5
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v0, :cond_18

    .line 150
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Float"

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->storeKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_3d
    .catchall {:try_start_5 .. :try_end_12} :catchall_3b

    .line 159
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 153
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->removeUselessValue(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setFloat(Ljava/lang/String;F)V

    .line 155
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3d
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3b

    goto :goto_5c

    :catchall_3b
    move-exception p1

    goto :goto_62

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v1, "SA.AbstractStoreManager"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_3b

    .line 159
    :goto_5c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_62
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    throw p1
.end method

.method public setInteger(Ljava/lang/String;I)V
    .registers 7

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    :try_start_5
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v0, :cond_18

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Integer"

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->storeKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_3d
    .catchall {:try_start_5 .. :try_end_12} :catchall_3b

    .line 142
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 136
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->removeUselessValue(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setInteger(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3d
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3b

    goto :goto_5c

    :catchall_3b
    move-exception p1

    goto :goto_62

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v1, "SA.AbstractStoreManager"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_3b

    .line 142
    :goto_5c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_62
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 143
    throw p1
.end method

.method public setLong(Ljava/lang/String;J)V
    .registers 8

    .line 164
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 166
    :try_start_5
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v0, :cond_18

    .line 167
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Long"

    invoke-direct {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->storeKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_3d
    .catchall {:try_start_5 .. :try_end_12} :catchall_3b

    .line 176
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 170
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->removeUselessValue(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setLong(Ljava/lang/String;J)V

    .line 172
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3d
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3b

    goto :goto_5c

    :catchall_3b
    move-exception p1

    goto :goto_62

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v1, "SA.AbstractStoreManager"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_3b

    .line 176
    :goto_5c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_62
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    throw p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    :try_start_5
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mDefaultState:Z

    if-eqz v0, :cond_14

    const-string v0, "String"

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->storeKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_6b
    .catchall {:try_start_5 .. :try_end_e} :catchall_69

    .line 108
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_14
    if-nez p2, :cond_45

    .line 96
    :try_start_16
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->remove(Ljava/lang/String;)V

    goto :goto_1c

    .line 99
    :cond_3f
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->remove(Ljava/lang/String;)V

    goto :goto_63

    .line 101
    :cond_45
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->removeUselessValue(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPriorityPlugin:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mMaxPluginType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLruCacheSPData:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager$LruCacheData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_63} :catch_6b
    .catchall {:try_start_16 .. :try_end_63} :catchall_69

    .line 108
    :goto_63
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8b

    :catchall_69
    move-exception p1

    goto :goto_8c

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string v1, "SA.AbstractStoreManager"

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save data failed,key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_69

    goto :goto_63

    :goto_8b
    return-void

    .line 108
    :goto_8c
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    throw p1
.end method

.method public upgrade()V
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 361
    :try_start_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_2c

    .line 363
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_24

    .line 367
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mStorePluginList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    :cond_24
    if-eqz v2, :cond_29

    .line 370
    invoke-interface {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;->upgrade(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_34
    .catchall {:try_start_5 .. :try_end_29} :catchall_32

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 376
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3d

    :catchall_32
    move-exception v0

    goto :goto_3e

    :catch_34
    move-exception v0

    :try_start_35
    const-string v1, "SA.AbstractStoreManager"

    const-string v2, "upgrade failed"

    .line 374
    invoke-static {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    goto :goto_2c

    :goto_3d
    return-void

    .line 376
    :goto_3e
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 377
    throw v0
.end method
