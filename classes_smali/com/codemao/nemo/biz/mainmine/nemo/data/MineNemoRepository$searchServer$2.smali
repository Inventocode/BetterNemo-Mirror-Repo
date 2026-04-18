.class final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/nemo/retrofit/api/SearchService;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/retrofit/api/SearchService;
    .registers 3

    .line 18
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/SearchService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/SearchService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;->invoke()Lcom/codemao/nemo/retrofit/api/SearchService;

    move-result-object v0

    return-object v0
.end method
