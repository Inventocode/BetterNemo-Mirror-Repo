.class public final synthetic Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->$r8$lambda$6Jia6aOtwPj2EjZ1YdXUD5iS7tI(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
