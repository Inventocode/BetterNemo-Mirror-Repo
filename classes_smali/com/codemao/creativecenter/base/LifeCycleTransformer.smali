.class public final Lcom/codemao/creativecenter/base/LifeCycleTransformer;
.super Ljava/lang/Object;
.source "LifeCycleTransformer.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private mBindEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/BehaviorSubject;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TK;>;TK;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/codemao/creativecenter/base/LifeCycleTransformer;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 26
    iput-object p2, p0, Lcom/codemao/creativecenter/base/LifeCycleTransformer;->mBindEvent:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/base/LifeCycleTransformer;)Ljava/lang/Object;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/creativecenter/base/LifeCycleTransformer;->mBindEvent:Ljava/lang/Object;

    return-object p0
.end method

.method private getOtherObservable()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TK;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/codemao/creativecenter/base/LifeCycleTransformer;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/codemao/creativecenter/base/LifeCycleTransformer$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/base/LifeCycleTransformer$1;-><init>(Lcom/codemao/creativecenter/base/LifeCycleTransformer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/codemao/creativecenter/base/LifeCycleTransformer;->getOtherObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
