.class public final synthetic Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;

.field public final synthetic f$1:Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->$r8$lambda$CH44Xt2c2jlHDsMY9fXDlzs8_9g(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;Ljava/util/List;)V

    return-void
.end method
