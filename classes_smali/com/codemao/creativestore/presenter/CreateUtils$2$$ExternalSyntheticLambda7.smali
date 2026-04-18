.class public final synthetic Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    invoke-static {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->$r8$lambda$RKVT9ENw5AJbwlM1i9MksJPRtAc(Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
