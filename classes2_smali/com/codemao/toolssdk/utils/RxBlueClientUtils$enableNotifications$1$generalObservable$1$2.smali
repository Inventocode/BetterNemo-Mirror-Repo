.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/Observable<",
        "[B>;",
        "Lio/reactivex/ObservableSource<",
        "+[B>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "[B>;)",
            "Lio/reactivex/ObservableSource<",
            "+[B>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 384
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;->invoke(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
