.class public final synthetic Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->$r8$lambda$VtW5UQahN-4FN2Df-geZ9JGjFA4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
