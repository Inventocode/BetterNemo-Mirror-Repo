.class public final synthetic Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativestore/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->$r8$lambda$Oqiq42vAhY5kJPbuUIJbs0azvHM(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
