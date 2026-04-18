.class public Lcom/codemao/creativecenter/utils/CreativeActivityUtils;
.super Ljava/lang/Object;
.source "CreativeActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/utils/CreativeActivityUtils$1;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;-><init>()V

    return-void
.end method

.method public static get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;
    .registers 1

    .line 30
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->instance:Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;->access$000(Lcom/codemao/creativecenter/utils/CreativeActivityUtils$Singleton;)Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 87
    :cond_3
    const-class v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    monitor-enter v0

    .line 88
    :try_start_6
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 89
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
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

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSecondLastActivity()Landroid/app/Activity;
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInCreateCenter()Z
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 72
    instance-of v1, v1, Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 98
    :cond_3
    const-class v0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    monitor-enter v0

    .line 99
    :try_start_6
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 100
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
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

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method
