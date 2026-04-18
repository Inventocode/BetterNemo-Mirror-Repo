.class final Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 47
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method
