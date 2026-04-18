.class public final synthetic Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-static {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->$r8$lambda$8WK-p-i2qBZd-G68zJoSvx4aNr4(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
