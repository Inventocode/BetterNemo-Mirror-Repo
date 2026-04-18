.class public final synthetic Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;->INSTANCE:Lcom/codemao/nemo/util/SystemUtil$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/codemao/nemo/util/SystemUtil;->$r8$lambda$YDXx_JE8PmlldOSq4IJZf2VyqhU(Lretrofit2/Response;)V

    return-void
.end method
