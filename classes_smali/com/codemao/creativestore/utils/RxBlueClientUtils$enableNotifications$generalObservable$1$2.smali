.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;

    invoke-direct {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;-><init>()V

    sput-object v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;->INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "[B>;)",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
