.class Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lextern/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$peerSettings:Lextern/okhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lextern/okhttp3/internal/http2/Settings;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 691
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 694
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lextern/okhttp3/internal/http2/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    goto :goto_0
.end method