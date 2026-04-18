.class public final synthetic Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    return-void
.end method


# virtual methods
.method public final complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 10

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->$r8$lambda$EqOO-XXRnXfaEnxKbmvk-4B3cIk(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
