.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;
.super Ljava/lang/Object;
.source "RecommendFragmentV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->downLoadEventImage(Lcom/codemao/nemo/bean/EventInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

.field final synthetic val$eventInfo:Lcom/codemao/nemo/bean/EventInfo;

.field final synthetic val$needShowLevelInfo:Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/EventInfo;Z)V
    .registers 6

    .line 1014
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$eventInfo:Lcom/codemao/nemo/bean/EventInfo;

    iput-boolean p5, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$needShowLevelInfo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1017
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/BcmService;->downloadFileByObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    .line 1018
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10$1;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
