.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcn/codemao/android/account/listener/NetFailResultListener;

.field public final synthetic f$4:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetFailResultListener;Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$3:Lcn/codemao/android/account/listener/NetFailResultListener;

    iput-object p5, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$4:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 8

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$3:Lcn/codemao/android/account/listener/NetFailResultListener;

    iget-object v4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;->f$4:Lorg/json/JSONObject;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$iHoREymzzmtNm1bAPgnBy-FTus0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetFailResultListener;Lorg/json/JSONObject;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
