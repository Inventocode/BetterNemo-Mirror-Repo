.class public final synthetic Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->$r8$lambda$ja0J6VR7Cv8LN1g7shBQpZqRlXk(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
