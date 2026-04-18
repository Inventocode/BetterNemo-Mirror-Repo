.class public final Lcom/codemao/nemo/biz/mainmine/MainMineRepository;
.super Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
.source "MainMineRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/UserService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public createServer()Lcom/codemao/nemo/retrofit/api/UserService;
    .registers 3

    .line 9
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get().create(UserService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    return-object v0
.end method

.method public bridge synthetic createServer()Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/MainMineRepository;->createServer()Lcom/codemao/nemo/retrofit/api/UserService;

    move-result-object v0

    return-object v0
.end method
