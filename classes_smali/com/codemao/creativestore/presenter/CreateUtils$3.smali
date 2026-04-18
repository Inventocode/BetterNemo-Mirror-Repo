.class Lcom/codemao/creativestore/presenter/CreateUtils$3;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;


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

    .line 807
    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$3;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public undoAndRedoStatus(ZZ)V
    .registers 4

    .line 810
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$3;->val$bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/view/NewBcmView;->undoAndRedoStatus(ZZ)V

    return-void
.end method
