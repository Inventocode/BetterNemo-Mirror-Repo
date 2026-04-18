.class public final Lcom/codemao/creativecenter/utils/zip/RxZipUtils;
.super Ljava/lang/Object;
.source "RxZipUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/zip/RxZipUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/zip/RxZipUtils;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils;->INSTANCE:Lcom/codemao/creativecenter/utils/zip/RxZipUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unzip(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/zip/UnzipInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/utils/zip/UnzipInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "unzipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;-><init>(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create<UnzipI…             })\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
