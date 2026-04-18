.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onForwardToSettings(Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->$r8$lambda$WZ1MsBqxtpqAdWWNyzdSxMeijVA(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method
