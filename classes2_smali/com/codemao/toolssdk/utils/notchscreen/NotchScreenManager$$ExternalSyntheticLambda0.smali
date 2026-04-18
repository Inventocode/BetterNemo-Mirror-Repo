.class public final synthetic Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;

.field public final synthetic f$1:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;

    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->$r8$lambda$4zqJQBhYr_8BYpbqzM4f5lSdz1M(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;Ljava/util/List;)V

    return-void
.end method
