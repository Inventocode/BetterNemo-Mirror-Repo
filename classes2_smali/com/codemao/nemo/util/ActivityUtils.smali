.class public Lcom/codemao/nemo/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/ActivityUtils$Singleton;
    }
.end annotation


# instance fields
.field private mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/util/ActivityUtils$1;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/codemao/nemo/util/ActivityUtils;-><init>()V

    return-void
.end method

.method public static convertActivityToTranslucent(Landroid/app/Activity;)V
    .registers 3

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 252
    invoke-static {p0}, Lcom/codemao/nemo/util/ActivityUtils;->convertActivityToTranslucentAfterL(Landroid/app/Activity;)V

    goto :goto_d

    .line 254
    :cond_a
    invoke-static {p0}, Lcom/codemao/nemo/util/ActivityUtils;->convertActivityToTranslucentBeforeL(Landroid/app/Activity;)V

    :goto_d
    return-void
.end method

.method private static convertActivityToTranslucentAfterL(Landroid/app/Activity;)V
    .registers 13

    .line 285
    const-class v0, Landroid/app/Activity;

    :try_start_2
    const-string v1, "getActivityOptions"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 286
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 287
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 289
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 291
    array-length v5, v4

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v5, :cond_31

    aget-object v9, v4, v7

    .line 292
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TranslucentConversionListener"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2e

    move-object v8, v9

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_31
    const-string v4, "convertToTranslucent"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v8, v7, v2

    .line 296
    const-class v8, Landroid/app/ActivityOptions;

    aput-object v8, v7, v3

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v1, v4, v3

    .line 299
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_4c

    :catchall_4c
    return-void
.end method

.method public static convertActivityToTranslucentBeforeL(Landroid/app/Activity;)V
    .registers 11

    .line 263
    const-class v0, Landroid/app/Activity;

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 265
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_1f

    aget-object v7, v1, v5

    .line 266
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TranslucentConversionListener"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move-object v6, v7

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1f
    const-string v1, "convertToTranslucent"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 270
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v3, v1, v4

    .line 273
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_34

    :catchall_34
    return-void
.end method

.method public static get()Lcom/codemao/nemo/util/ActivityUtils;
    .registers 1

    .line 37
    sget-object v0, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->instance:Lcom/codemao/nemo/util/ActivityUtils$Singleton;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityUtils$Singleton;->access$000(Lcom/codemao/nemo/util/ActivityUtils$Singleton;)Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activityClassIsLive(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public addActivity(Landroid/app/Activity;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 81
    :cond_3
    const-class v0, Lcom/codemao/nemo/util/ActivityUtils;

    monitor-enter v0

    .line 82
    :try_start_6
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 83
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public enterBCM()V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 131
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_52
    return-void
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_10
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public hasActivity(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public killActivity(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public popAllActivityExceptOne()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 172
    instance-of v2, v1, Lcom/codemao/nemo/activity/LoginActivity;

    if-nez v2, :cond_6

    .line 173
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 92
    :cond_3
    const-class v0, Lcom/codemao/nemo/util/ActivityUtils;

    monitor-enter v0

    .line 93
    :try_start_6
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 94
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityUtils;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method
