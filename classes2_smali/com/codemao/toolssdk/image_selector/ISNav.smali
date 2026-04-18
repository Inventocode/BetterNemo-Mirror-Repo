.class public Lcom/codemao/toolssdk/image_selector/ISNav;
.super Ljava/lang/Object;
.source "ISNav.java"


# static fields
.field private static instance:Lcom/codemao/toolssdk/image_selector/ISNav;


# instance fields
.field private loader:Lcom/codemao/toolssdk/image_selector/common/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$opv46HDtOPRE7TCDv_qAepOgh14(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ISNav;->lambda$displayImage$924ec9e9$1(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;
    .registers 2

    .line 29
    sget-object v0, Lcom/codemao/toolssdk/image_selector/ISNav;->instance:Lcom/codemao/toolssdk/image_selector/ISNav;

    if-nez v0, :cond_17

    .line 30
    const-class v0, Lcom/codemao/toolssdk/image_selector/ISNav;

    monitor-enter v0

    .line 31
    :try_start_7
    sget-object v1, Lcom/codemao/toolssdk/image_selector/ISNav;->instance:Lcom/codemao/toolssdk/image_selector/ISNav;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Lcom/codemao/toolssdk/image_selector/ISNav;

    invoke-direct {v1}, Lcom/codemao/toolssdk/image_selector/ISNav;-><init>()V

    sput-object v1, Lcom/codemao/toolssdk/image_selector/ISNav;->instance:Lcom/codemao/toolssdk/image_selector/ISNav;

    .line 34
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 36
    :cond_17
    :goto_17
    sget-object v0, Lcom/codemao/toolssdk/image_selector/ISNav;->instance:Lcom/codemao/toolssdk/image_selector/ISNav;

    return-object v0
.end method

.method private static synthetic lambda$displayImage$924ec9e9$1(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 3

    .line 41
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ISNav;->loader:Lcom/codemao/toolssdk/image_selector/common/ImageLoader;

    if-nez v0, :cond_8

    .line 41
    sget-object v0, Lcom/codemao/toolssdk/image_selector/ISNav$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/toolssdk/image_selector/ISNav$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/ISNav;->loader:Lcom/codemao/toolssdk/image_selector/common/ImageLoader;

    .line 43
    :cond_8
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ISNav;->loader:Lcom/codemao/toolssdk/image_selector/common/ImageLoader;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/common/ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public toListActivity(Ljava/lang/Object;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V
    .registers 5

    .line 47
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 48
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->startForResult(Landroid/app/Activity;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V

    goto :goto_1d

    .line 49
    :cond_a
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_14

    .line 50
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->startForResult(Landroidx/fragment/app/Fragment;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V

    goto :goto_1d

    .line 51
    :cond_14
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_1d

    .line 52
    check-cast p1, Landroid/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->startForResult(Landroid/app/Fragment;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V

    :cond_1d
    :goto_1d
    return-void
.end method
