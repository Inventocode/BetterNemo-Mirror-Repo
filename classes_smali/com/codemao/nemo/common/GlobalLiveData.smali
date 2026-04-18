.class public final Lcom/codemao/nemo/common/GlobalLiveData;
.super Ljava/lang/Object;
.source "GlobalLiveData.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/common/GlobalLiveData;

.field private static final KN_WORK_UPDATE:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/common/GlobalLiveData;

    invoke-direct {v0}, Lcom/codemao/nemo/common/GlobalLiveData;-><init>()V

    sput-object v0, Lcom/codemao/nemo/common/GlobalLiveData;->INSTANCE:Lcom/codemao/nemo/common/GlobalLiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/codemao/nemo/common/GlobalLiveData;->KN_WORK_UPDATE:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKN_WORK_UPDATE()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/codemao/nemo/common/GlobalLiveData;->KN_WORK_UPDATE:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
