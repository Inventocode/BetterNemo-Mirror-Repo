.class final Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;
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
        "Lretrofit2/Response<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;

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
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;->invoke(Lretrofit2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/codemao/nemo/biz/common/GlobalUtils;->access$setSuccess$p(Z)V

    .line 49
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_12

    const-string/jumbo v1, "空的"

    goto :goto_13

    :cond_12
    move-object v1, p1

    :goto_13
    const-string/jumbo v2, "域名前缀"

    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils;->access$updateList(Lcom/codemao/nemo/biz/common/GlobalUtils;Ljava/lang/String;)V

    return-void
.end method
