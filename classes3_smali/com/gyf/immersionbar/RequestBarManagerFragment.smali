.class public final Lcom/gyf/immersionbar/RequestBarManagerFragment;
.super Landroid/app/Fragment;
.source "RequestBarManagerFragment.java"


# instance fields
.field private mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcom/gyf/immersionbar/ImmersionDelegate;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/ImmersionDelegate;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionDelegate;->get()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz p1, :cond_12

    .line 37
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionDelegate;->onActivityCreated(Landroid/content/res/Configuration;)V

    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/ImmersionDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 51
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 52
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz v0, :cond_d

    .line 53
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionDelegate;->onDestroy()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 43
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 44
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestBarManagerFragment;->mDelegate:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionDelegate;->onResume()V

    :cond_a
    return-void
.end method
