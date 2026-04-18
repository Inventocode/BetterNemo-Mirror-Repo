.class public Lcom/tencent/smtt/sdk/WebSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;,
        Lcom/tencent/smtt/sdk/WebSettings$TextSize;,
        Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;,
        Lcom/tencent/smtt/sdk/WebSettings$PluginState;,
        Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2


# instance fields
.field private a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

.field private b:Landroid/webkit/WebSettings;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/x;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1f

    return-object v2

    :cond_1f
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const-string p0, "getDefaultUserAgent"

    invoke-static {v0, p0, v3, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_36

    goto :goto_39

    :cond_36
    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :goto_39
    return-object v2
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->enableSmoothTransition()Z

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_29

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_29

    const-string v2, "enableSmoothTransition"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_29

    :cond_23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_29
    :goto_29
    return v1
.end method

.method public getAllowContentAccess()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getAllowContentAccess()Z

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_29

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_29

    const-string v2, "getAllowContentAccess"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_29

    :cond_23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_29
    :goto_29
    return v1
.end method

.method public getAllowFileAccess()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getBlockNetworkImage()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getBlockNetworkLoads()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_26

    monitor-exit p0

    return v0

    :cond_f
    const/4 v1, 0x0

    if-nez v0, :cond_24

    :try_start_12
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_24

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_22

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_26

    monitor-exit p0

    return v0

    :cond_22
    monitor-exit p0

    return v1

    :cond_24
    monitor-exit p0

    return v1

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheMode()I
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getCacheMode()I

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDatabaseEnabled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultFixedFontSize()I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultFontSize()I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDefaultZoom()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    move-result-object v0

    return-object v0

    :cond_15
    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_29

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_29

    const-string v2, "getDisplayZoomControls"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_29

    :cond_23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_29
    :goto_29
    return v1
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getDomStorageEnabled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getJavaScriptEnabled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLayoutAlgorithm()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    monitor-exit p0

    return-object v0

    :cond_17
    if-nez v0, :cond_2b

    :try_start_19
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2e

    monitor-exit p0

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLightTouchEnabled()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLightTouchEnabled()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_1b

    return v1

    :cond_1b
    const-string v2, "getMediaPlaybackRequiresUserGesture"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_2a

    :cond_24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2a
    :goto_2a
    return v1
.end method

.method public declared-synchronized getMinimumFontSize()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMinimumFontSize()I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMinimumLogicalFontSize()I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMixedContentMode()I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_36

    if-eqz v0, :cond_16

    :try_start_a
    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getMixedContentMode()I

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_36

    monitor-exit p0

    return v1

    :cond_16
    :try_start_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_36

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1e

    monitor-exit p0

    return v1

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getMixedContentMode"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_34

    :cond_2e
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_36

    :goto_34
    monitor-exit p0

    return v1

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getNavDump()Z

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_23

    const-string v2, "getNavDump"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_23
    :goto_23
    return v1
.end method

.method public declared-synchronized getPluginState()Lcom/tencent/smtt/sdk/WebSettings$PluginState;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getPluginState()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_3e

    monitor-exit p0

    return-object v0

    :cond_17
    const/4 v1, 0x0

    if-nez v0, :cond_3c

    :try_start_1a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_3c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_3a

    const-string v2, "getPluginState"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_3e

    if-nez v0, :cond_2e

    monitor-exit p0

    return-object v1

    :cond_2e
    :try_start_2e
    check-cast v0, Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3e

    monitor-exit p0

    return-object v0

    :cond_3a
    monitor-exit p0

    return-object v1

    :cond_3c
    monitor-exit p0

    return-object v1

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getPluginsEnabled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_40

    monitor-exit p0

    return v0

    :cond_f
    const/4 v1, 0x0

    if-nez v0, :cond_3e

    :try_start_12
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_3e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v2, v3, :cond_2d

    const-string v2, "getPluginsEnabled"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_2b

    :cond_25
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_40

    :goto_2b
    monitor-exit p0

    return v1

    :cond_2d
    const/16 v3, 0x12

    if-ne v2, v3, :cond_3c

    :try_start_31
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_40

    if-ne v2, v0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    monitor-exit p0

    return v1

    :cond_3c
    monitor-exit p0

    return v1

    :cond_3e
    monitor-exit p0

    return v1

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getPluginsPath()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_31

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_2d

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_29

    const-string v1, "getPluginsPath"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    goto :goto_27

    :cond_25
    check-cast v0, Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_31

    :goto_27
    monitor-exit p0

    return-object v0

    :cond_29
    :try_start_29
    const-string v0, ""
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_31

    monitor-exit p0

    return-object v0

    :cond_2d
    :try_start_2d
    const-string v0, ""
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSafeBrowsingEnabled()Z
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v1, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_22

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSafeBrowsingEnabled()Z

    move-result v0

    return v0

    :cond_13
    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_22

    :try_start_19
    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSafeBrowsingEnabled()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    return v0

    :catchall_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSaveFormData()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getSavePassword()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSavePassword()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string v0, ""
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTextSize()Lcom/tencent/smtt/sdk/WebSettings$TextSize;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getTextSize()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    move-result-object v0

    return-object v0

    :cond_15
    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getTextZoom()I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getTextZoom()I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_39

    monitor-exit p0

    return v0

    :cond_f
    const/4 v1, 0x0

    if-nez v0, :cond_37

    :try_start_12
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_37

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_39

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1e

    monitor-exit p0

    return v1

    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_24
    .catchall {:try_start_1e .. :try_end_22} :catchall_39

    monitor-exit p0

    return v0

    :catch_24
    :try_start_24
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v2, "getTextZoom"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    goto :goto_35

    :cond_2f
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_39

    :goto_35
    monitor-exit p0

    return v1

    :cond_37
    monitor-exit p0

    return v1

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_23

    const-string v2, "getUseWebViewBackgroundForOverscrollBackground"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_23
    :goto_23
    return v1
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getUseWideViewPort()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, ""

    return-object v0
.end method

.method public setAllowContentAccess(Z)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowContentAccess(Z)V

    goto :goto_2e

    :cond_c
    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setAllowContentAccess"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowFileAccess(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    goto :goto_27

    :cond_c
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setAllowFileAccessFromFileURLs"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    goto :goto_27

    :cond_c
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setAllowUniversalAccessFromFileURLs"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAppCacheEnabled(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setAppCacheMaxSize(J)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAppCacheMaxSize(J)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setAppCachePath(Ljava/lang/String;)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setBlockNetworkImage(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setBlockNetworkLoads(Z)V

    goto :goto_1c

    :cond_d
    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1c

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_20

    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setCacheMode(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setCacheMode(I)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDatabaseEnabled(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDatabaseEnabled(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDatabasePath(Ljava/lang/String;)V

    goto :goto_23

    :cond_c
    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "setDatabasePath"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_23
    return-void
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultFixedFontSize(I)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultFontSize(I)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDefaultZoom(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$ZoomDensity;)V

    goto :goto_25

    :cond_14
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDisplayZoomControls(Z)V

    goto :goto_2e

    :cond_c
    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setDisplayZoomControls"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setDomStorageEnabled(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setEnableSmoothTransition(Z)V

    goto :goto_2d

    :cond_c
    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2d

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setEnableSmoothTransition"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setGeolocationEnabled(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setJavaScriptEnabled(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_1b

    :cond_c
    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_17

    goto :goto_1b

    :cond_16
    return-void

    :catchall_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;)V

    goto :goto_25

    :cond_14
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLightTouchEnabled(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setLoadsImagesAutomatically(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    goto :goto_2e

    :cond_c
    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setMediaPlaybackRequiresUserGesture"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setMinimumFontSize(I)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMixedContentMode(I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_2b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_16

    return-void

    :cond_16
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setMixedContentMode"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-void
.end method

.method public setNavDump(Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setNavDump(Z)V

    goto :goto_27

    :cond_c
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setNavDump"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setNeedInitialFocus(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public declared-synchronized setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setPluginState(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$PluginState;)V

    goto :goto_3c

    :cond_15
    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_3e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setPluginState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebSettings$PluginState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_40

    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void

    :cond_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPluginsEnabled(Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setPluginsEnabled(Z)V

    goto :goto_27

    :cond_c
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setPluginsEnabled"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setPluginsPath(Ljava/lang/String;)V

    goto :goto_24

    :cond_d
    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_26

    const-string v1, "setPluginsPath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_28

    :goto_24
    monitor-exit p0

    return-void

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setRenderPriority(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$RenderPriority;)V

    goto :goto_25

    :cond_14
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setSafeBrowsingEnabled(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_20

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    goto :goto_20

    :cond_12
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v0, :cond_20

    :try_start_18
    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSafeBrowsingEnabled(Z)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_20
    :goto_20
    return-void
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSaveFormData(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSaveFormData(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setSavePassword(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSavePassword(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    goto :goto_16

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSupportMultipleWindows(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSupportMultipleWindows(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setSupportZoom(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setSupportZoom(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setTextSize(Lcom/tencent/smtt/sdk/WebSettings$TextSize;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setTextSize(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$TextSize;)V

    goto :goto_25

    :cond_14
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public declared-synchronized setTextZoom(I)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setTextZoom(I)V

    goto :goto_36

    :cond_d
    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_36

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_38

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1b

    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_38

    goto :goto_36

    :catch_1f
    :try_start_1f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    const-string v1, "setTextZoom"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_38

    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUseWebViewBackgroundForOverscrollBackground(Z)V

    goto :goto_27

    :cond_c
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setUseWebViewBackgroundForOverscrollBackground"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUseWideViewPort(Z)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUserAgent(Ljava/lang/String;)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_15

    :cond_c
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->supportMultipleWindows()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    monitor-exit p0

    return v0

    :cond_f
    if-nez v0, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->c:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebSettings;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;->supportZoom()Z

    move-result v0

    return v0

    :cond_d
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebSettings;->b:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method
