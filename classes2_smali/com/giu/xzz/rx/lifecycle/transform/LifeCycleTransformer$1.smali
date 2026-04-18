.class Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer$1;
.super Ljava/lang/Object;
.source "LifeCycleTransformer.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;->getOtherObservable()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;


# direct methods
.method constructor <init>(Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer$1;->this$0:Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer$1;->this$0:Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    invoke-static {v0}, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;->access$000(Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
