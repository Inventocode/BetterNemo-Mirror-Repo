.class public final synthetic Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

.field public final synthetic f$1:Lcom/codemao/creativestore/bean/ActorVO;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativestore/bean/ActorVO;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->$r8$lambda$UMJzyhuiM4s7pAawWzKvrHPDSEg(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
