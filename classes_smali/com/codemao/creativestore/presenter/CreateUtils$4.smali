.class Lcom/codemao/creativestore/presenter/CreateUtils$4;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/JSStoreCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;-><init>(Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/creativestore/view/NewBcmView;Lcom/codemao/creativestore/dsbridge/DWebView;Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/view/NewBcmView;)V
    .registers 3

    .line 817
    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actorScrollTo(I)V
    .registers 3

    .line 859
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->actorScrollTo(I)V

    return-void
.end method

.method public copyActor(I)V
    .registers 3

    .line 841
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->actorAddInfo(I)V

    return-void
.end method

.method public deleteActor(I)V
    .registers 3

    .line 864
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->deleteActor(I)V

    return-void
.end method

.method public sceneScrollTo(I)V
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->sceneScrollTo(I)V

    return-void
.end method

.method public showCannotDeleteSceneOne()V
    .registers 2

    .line 821
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->showCannotDeleteSceneOne()V

    return-void
.end method

.method public updateScenList(I)V
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/view/NewBcmView;->updateScenList(I)V

    return-void
.end method

.method public updateToDeleteImg(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->getSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "toDeleteImgs"

    .line 853
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 854
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateUserList()V
    .registers 2

    .line 836
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$4;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->updateUserList()V

    return-void
.end method
