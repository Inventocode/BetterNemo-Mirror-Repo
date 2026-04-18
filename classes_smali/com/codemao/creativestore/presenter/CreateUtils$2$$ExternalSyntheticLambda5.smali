.class public final synthetic Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativestore/presenter/CreateUtils$2;

.field public final synthetic f$1:Lcom/codemao/creativestore/jsbridge/bean/WriteData;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/WriteData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/creativestore/presenter/CreateUtils$2;

    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;->f$1:Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/creativestore/presenter/CreateUtils$2;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;->f$1:Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->$r8$lambda$MC4YR5F6juZqzKjpZNVOZ82NYKQ(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/WriteData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
