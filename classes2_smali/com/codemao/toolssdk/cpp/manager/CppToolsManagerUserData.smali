.class public abstract Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerUserData;
.super Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;
.source "CppToolsManagerUserData.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserData(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 48
    sget-object p1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 49
    invoke-virtual {p0, p5, p6}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerUserData;->updateUserToken(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public updateUserToken(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method
